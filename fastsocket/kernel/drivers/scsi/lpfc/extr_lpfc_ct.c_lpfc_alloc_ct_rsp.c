
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_3__ {scalar_t__ bdeSize; int bdeFlags; } ;
struct TYPE_4__ {void* w; TYPE_1__ f; } ;
struct ulp_bde64 {TYPE_2__ tus; void* addrHigh; void* addrLow; } ;
struct lpfc_hba {int dummy; } ;
struct lpfc_dmabuf {int phys; int list; void* virt; } ;


 int BUFF_TYPE_BDE_64I ;
 int FCELSSIZE ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int MEM_PRI ;
 int SLI_CTNS_GFF_ID ;
 int SLI_CTNS_GID_FT ;
 int be16_to_cpu (int ) ;
 int kfree (struct lpfc_dmabuf*) ;
 struct lpfc_dmabuf* kmalloc (int,int ) ;
 void* le32_to_cpu (void*) ;
 int list_add_tail (int *,int *) ;
 int lpfc_free_ct_rsp (struct lpfc_hba*,struct lpfc_dmabuf*) ;
 void* lpfc_mbuf_alloc (struct lpfc_hba*,int ,int *) ;
 void* putPaddrHigh (int ) ;
 void* putPaddrLow (int ) ;

__attribute__((used)) static struct lpfc_dmabuf *
lpfc_alloc_ct_rsp(struct lpfc_hba *phba, int cmdcode, struct ulp_bde64 *bpl,
    uint32_t size, int *entries)
{
 struct lpfc_dmabuf *mlist = ((void*)0);
 struct lpfc_dmabuf *mp;
 int cnt, i = 0;


 cnt = size > FCELSSIZE ? FCELSSIZE: size;

 while (size) {

  mp = kmalloc(sizeof(struct lpfc_dmabuf), GFP_KERNEL);
  if (!mp) {
   if (mlist)
    lpfc_free_ct_rsp(phba, mlist);
   return ((void*)0);
  }

  INIT_LIST_HEAD(&mp->list);

  if (cmdcode == be16_to_cpu(SLI_CTNS_GID_FT) ||
      cmdcode == be16_to_cpu(SLI_CTNS_GFF_ID))
   mp->virt = lpfc_mbuf_alloc(phba, MEM_PRI, &(mp->phys));
  else
   mp->virt = lpfc_mbuf_alloc(phba, 0, &(mp->phys));

  if (!mp->virt) {
   kfree(mp);
   if (mlist)
    lpfc_free_ct_rsp(phba, mlist);
   return ((void*)0);
  }


  if (!mlist)
   mlist = mp;
  else
   list_add_tail(&mp->list, &mlist->list);

  bpl->tus.f.bdeFlags = BUFF_TYPE_BDE_64I;

  bpl->addrLow = le32_to_cpu(putPaddrLow(mp->phys) );
  bpl->addrHigh = le32_to_cpu(putPaddrHigh(mp->phys) );
  bpl->tus.f.bdeSize = (uint16_t) cnt;
  bpl->tus.w = le32_to_cpu(bpl->tus.w);
  bpl++;

  i++;
  size -= cnt;
 }

 *entries = i;
 return mlist;
}
