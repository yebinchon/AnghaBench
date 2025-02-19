
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct lpfc_sli_ring {int missbufcnt; int ringno; } ;
struct TYPE_9__ {TYPE_3__* cont64; } ;
struct TYPE_10__ {int ulpBdeCount; int ulpLe; int ulpCommand; TYPE_4__ un; } ;
struct lpfc_iocbq {TYPE_5__ iocb; } ;
struct lpfc_hba {int dummy; } ;
struct lpfc_dmabuf {int phys; void* virt; int list; } ;
struct TYPE_6__ {void* bdeSize; } ;
struct TYPE_7__ {TYPE_1__ f; } ;
struct TYPE_8__ {TYPE_2__ tus; void* addrLow; void* addrHigh; } ;
typedef TYPE_5__ IOCB_t ;


 int CMD_QUE_RING_BUF64_CN ;
 void* FCELSSIZE ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IOCB_ERROR ;
 int MEM_PRI ;
 int kfree (struct lpfc_dmabuf*) ;
 struct lpfc_dmabuf* kmalloc (int,int ) ;
 void* lpfc_mbuf_alloc (struct lpfc_hba*,int ,int *) ;
 int lpfc_mbuf_free (struct lpfc_hba*,void*,int ) ;
 struct lpfc_iocbq* lpfc_sli_get_iocbq (struct lpfc_hba*) ;
 scalar_t__ lpfc_sli_issue_iocb (struct lpfc_hba*,int ,struct lpfc_iocbq*,int ) ;
 int lpfc_sli_release_iocbq (struct lpfc_hba*,struct lpfc_iocbq*) ;
 int lpfc_sli_ringpostbuf_put (struct lpfc_hba*,struct lpfc_sli_ring*,struct lpfc_dmabuf*) ;
 void* putPaddrHigh (int ) ;
 void* putPaddrLow (int ) ;

int
lpfc_post_buffer(struct lpfc_hba *phba, struct lpfc_sli_ring *pring, int cnt)
{
 IOCB_t *icmd;
 struct lpfc_iocbq *iocb;
 struct lpfc_dmabuf *mp1, *mp2;

 cnt += pring->missbufcnt;


 while (cnt > 0) {

  iocb = lpfc_sli_get_iocbq(phba);
  if (iocb == ((void*)0)) {
   pring->missbufcnt = cnt;
   return cnt;
  }
  icmd = &iocb->iocb;



  mp1 = kmalloc(sizeof (struct lpfc_dmabuf), GFP_KERNEL);
  if (mp1)
      mp1->virt = lpfc_mbuf_alloc(phba, MEM_PRI, &mp1->phys);
  if (!mp1 || !mp1->virt) {
   kfree(mp1);
   lpfc_sli_release_iocbq(phba, iocb);
   pring->missbufcnt = cnt;
   return cnt;
  }

  INIT_LIST_HEAD(&mp1->list);

  if (cnt > 1) {
   mp2 = kmalloc(sizeof (struct lpfc_dmabuf), GFP_KERNEL);
   if (mp2)
    mp2->virt = lpfc_mbuf_alloc(phba, MEM_PRI,
           &mp2->phys);
   if (!mp2 || !mp2->virt) {
    kfree(mp2);
    lpfc_mbuf_free(phba, mp1->virt, mp1->phys);
    kfree(mp1);
    lpfc_sli_release_iocbq(phba, iocb);
    pring->missbufcnt = cnt;
    return cnt;
   }

   INIT_LIST_HEAD(&mp2->list);
  } else {
   mp2 = ((void*)0);
  }

  icmd->un.cont64[0].addrHigh = putPaddrHigh(mp1->phys);
  icmd->un.cont64[0].addrLow = putPaddrLow(mp1->phys);
  icmd->un.cont64[0].tus.f.bdeSize = FCELSSIZE;
  icmd->ulpBdeCount = 1;
  cnt--;
  if (mp2) {
   icmd->un.cont64[1].addrHigh = putPaddrHigh(mp2->phys);
   icmd->un.cont64[1].addrLow = putPaddrLow(mp2->phys);
   icmd->un.cont64[1].tus.f.bdeSize = FCELSSIZE;
   cnt--;
   icmd->ulpBdeCount = 2;
  }

  icmd->ulpCommand = CMD_QUE_RING_BUF64_CN;
  icmd->ulpLe = 1;

  if (lpfc_sli_issue_iocb(phba, pring->ringno, iocb, 0) ==
      IOCB_ERROR) {
   lpfc_mbuf_free(phba, mp1->virt, mp1->phys);
   kfree(mp1);
   cnt++;
   if (mp2) {
    lpfc_mbuf_free(phba, mp2->virt, mp2->phys);
    kfree(mp2);
    cnt++;
   }
   lpfc_sli_release_iocbq(phba, iocb);
   pring->missbufcnt = cnt;
   return cnt;
  }
  lpfc_sli_ringpostbuf_put(phba, pring, mp1);
  if (mp2)
   lpfc_sli_ringpostbuf_put(phba, pring, mp2);
 }
 pring->missbufcnt = 0;
 return 0;
}
