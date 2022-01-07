
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* ring; } ;
struct lpfc_hba {int fcp_poll_timer; TYPE_2__ sli; int cfg_poll_tmo; } ;
struct TYPE_3__ {int txcmplq; } ;


 size_t LPFC_FCP_RING ;
 unsigned long jiffies ;
 int list_empty (int *) ;
 int mod_timer (int *,unsigned long) ;
 unsigned long msecs_to_jiffies (int ) ;

__attribute__((used)) static __inline__ void lpfc_poll_rearm_timer(struct lpfc_hba * phba)
{
 unsigned long poll_tmo_expires =
  (jiffies + msecs_to_jiffies(phba->cfg_poll_tmo));

 if (!list_empty(&phba->sli.ring[LPFC_FCP_RING].txcmplq))
  mod_timer(&phba->fcp_poll_timer,
     poll_tmo_expires);
}
