
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_3__ {scalar_t__ sli_intr; scalar_t__ sli_prev_intr; scalar_t__ sli_ips; } ;
struct TYPE_4__ {TYPE_1__ slistat; } ;
struct lpfc_hba {int eratt_poll; TYPE_2__ sli; } ;


 int LPFC_ERATT_POLL_INTERVAL ;
 scalar_t__ do_div (scalar_t__,int) ;
 scalar_t__ jiffies ;
 scalar_t__ lpfc_sli_check_eratt (struct lpfc_hba*) ;
 int lpfc_worker_wake_up (struct lpfc_hba*) ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int) ;

void lpfc_poll_eratt(unsigned long ptr)
{
 struct lpfc_hba *phba;
 uint32_t eratt = 0, rem;
 uint64_t sli_intr, cnt;

 phba = (struct lpfc_hba *)ptr;


 sli_intr = phba->sli.slistat.sli_intr;

 if (phba->sli.slistat.sli_prev_intr > sli_intr)
  cnt = (((uint64_t)(-1) - phba->sli.slistat.sli_prev_intr) +
   sli_intr);
 else
  cnt = (sli_intr - phba->sli.slistat.sli_prev_intr);


 rem = do_div(cnt, LPFC_ERATT_POLL_INTERVAL);
 phba->sli.slistat.sli_ips = cnt;

 phba->sli.slistat.sli_prev_intr = sli_intr;


 eratt = lpfc_sli_check_eratt(phba);

 if (eratt)

  lpfc_worker_wake_up(phba);
 else

  mod_timer(&phba->eratt_poll,
     jiffies +
     msecs_to_jiffies(1000 * LPFC_ERATT_POLL_INTERVAL));
 return;
}
