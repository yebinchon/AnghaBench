
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slgt_info {int rbuf_count; unsigned int tbuf_count; struct slgt_desc* tbufs; struct slgt_desc* rbufs; scalar_t__ bufs_dma_addr; int * bufs; int pdev; } ;
struct slgt_desc {unsigned int pdesc; void* next; } ;


 int DESC_LIST_SIZE ;
 int DMABUFSIZE ;
 int ENOMEM ;
 void* cpu_to_le32 (unsigned int) ;
 int memset (int *,int ,int ) ;
 int * pci_alloc_consistent (int ,int ,scalar_t__*) ;
 int set_desc_count (struct slgt_desc,int ) ;

__attribute__((used)) static int alloc_desc(struct slgt_info *info)
{
 unsigned int i;
 unsigned int pbufs;


 info->bufs = pci_alloc_consistent(info->pdev, DESC_LIST_SIZE, &info->bufs_dma_addr);
 if (info->bufs == ((void*)0))
  return -ENOMEM;

 memset(info->bufs, 0, DESC_LIST_SIZE);

 info->rbufs = (struct slgt_desc*)info->bufs;
 info->tbufs = ((struct slgt_desc*)info->bufs) + info->rbuf_count;

 pbufs = (unsigned int)info->bufs_dma_addr;





 for (i=0; i < info->rbuf_count; i++) {

  info->rbufs[i].pdesc = pbufs + (i * sizeof(struct slgt_desc));


  if (i == info->rbuf_count - 1)
   info->rbufs[i].next = cpu_to_le32(pbufs);
  else
   info->rbufs[i].next = cpu_to_le32(pbufs + ((i+1) * sizeof(struct slgt_desc)));
  set_desc_count(info->rbufs[i], DMABUFSIZE);
 }

 for (i=0; i < info->tbuf_count; i++) {

  info->tbufs[i].pdesc = pbufs + ((info->rbuf_count + i) * sizeof(struct slgt_desc));


  if (i == info->tbuf_count - 1)
   info->tbufs[i].next = cpu_to_le32(pbufs + info->rbuf_count * sizeof(struct slgt_desc));
  else
   info->tbufs[i].next = cpu_to_le32(pbufs + ((info->rbuf_count + i + 1) * sizeof(struct slgt_desc)));
 }

 return 0;
}
