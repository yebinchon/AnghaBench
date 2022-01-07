
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_3__ {scalar_t__ bdeSize; int bdeFlags; } ;
struct TYPE_4__ {void* w; TYPE_1__ f; } ;
struct ulp_bde64 {TYPE_2__ tus; void* addrHigh; void* addrLow; } ;
struct lpfc_hba {int dummy; } ;
struct lpfc_dmabuf {int phys; int list; int virt; } ;


 int BUFF_TYPE_BDE_64 ;
 int BUFF_TYPE_BDE_64I ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int LPFC_BPL_SIZE ;
 int MEM_PRI ;
 int kfree (struct lpfc_dmabuf*) ;
 struct lpfc_dmabuf* kmalloc (int,int ) ;
 void* le32_to_cpu (void*) ;
 int list_add_tail (int *,int *) ;
 int lpfc_free_bsg_buffers (struct lpfc_hba*,struct lpfc_dmabuf*) ;
 int lpfc_mbuf_alloc (struct lpfc_hba*,int ,int *) ;
 void* putPaddrHigh (int ) ;
 void* putPaddrLow (int ) ;

__attribute__((used)) static struct lpfc_dmabuf *
lpfc_alloc_bsg_buffers(struct lpfc_hba *phba, unsigned int size,
         int outbound_buffers, struct ulp_bde64 *bpl,
         int *bpl_entries)
{
 struct lpfc_dmabuf *mlist = ((void*)0);
 struct lpfc_dmabuf *mp;
 unsigned int bytes_left = size;


 if (!size || (size > (*bpl_entries * LPFC_BPL_SIZE)))
  return ((void*)0);


 *bpl_entries = (size % LPFC_BPL_SIZE ? size/LPFC_BPL_SIZE + 1 :
   size/LPFC_BPL_SIZE);


 while (bytes_left) {

  mp = kmalloc(sizeof(struct lpfc_dmabuf), GFP_KERNEL);
  if (!mp) {
   if (mlist)
    lpfc_free_bsg_buffers(phba, mlist);
   return ((void*)0);
  }

  INIT_LIST_HEAD(&mp->list);
  mp->virt = lpfc_mbuf_alloc(phba, MEM_PRI, &(mp->phys));

  if (!mp->virt) {
   kfree(mp);
   if (mlist)
    lpfc_free_bsg_buffers(phba, mlist);
   return ((void*)0);
  }


  if (!mlist)
   mlist = mp;
  else
   list_add_tail(&mp->list, &mlist->list);


  if (outbound_buffers)
   bpl->tus.f.bdeFlags = BUFF_TYPE_BDE_64;
  else
   bpl->tus.f.bdeFlags = BUFF_TYPE_BDE_64I;
  bpl->addrLow = le32_to_cpu(putPaddrLow(mp->phys));
  bpl->addrHigh = le32_to_cpu(putPaddrHigh(mp->phys));
  bpl->tus.f.bdeSize = (uint16_t)
   (bytes_left >= LPFC_BPL_SIZE ? LPFC_BPL_SIZE :
    bytes_left);
  bytes_left -= bpl->tus.f.bdeSize;
  bpl->tus.w = le32_to_cpu(bpl->tus.w);
  bpl++;
 }
 return mlist;
}
