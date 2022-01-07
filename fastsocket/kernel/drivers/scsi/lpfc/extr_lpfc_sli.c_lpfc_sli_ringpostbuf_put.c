
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_sli_ring {int postbufq_cnt; int postbufq; } ;
struct lpfc_hba {int hbalock; } ;
struct lpfc_dmabuf {int list; } ;


 int list_add_tail (int *,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

int
lpfc_sli_ringpostbuf_put(struct lpfc_hba *phba, struct lpfc_sli_ring *pring,
    struct lpfc_dmabuf *mp)
{


 spin_lock_irq(&phba->hbalock);
 list_add_tail(&mp->list, &pring->postbufq);
 pring->postbufq_cnt++;
 spin_unlock_irq(&phba->hbalock);
 return 0;
}
