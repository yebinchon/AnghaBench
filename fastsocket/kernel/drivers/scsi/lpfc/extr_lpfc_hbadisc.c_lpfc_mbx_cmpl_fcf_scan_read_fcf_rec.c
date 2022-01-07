
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef scalar_t__ uint16_t ;
struct lpfc_fcf_rec {scalar_t__ fcf_indx; int flag; scalar_t__ priority; } ;
struct TYPE_4__ {int fcf_flag; int eligible_fcf_cnt; struct lpfc_fcf_rec current_rec; struct lpfc_fcf_rec failover_rec; } ;
struct lpfc_hba {int hba_flag; scalar_t__ cfg_fcf_failover_policy; int hbalock; TYPE_2__ fcf; int fcoe_eventtag_at_fcf_scan; TYPE_1__* pport; } ;
struct fcf_record {scalar_t__ fip_priority; } ;
struct TYPE_3__ {int fc_flag; int port_state; } ;
typedef int LPFC_MBOXQ_t ;


 int BOOT_ENABLE ;
 int FCF_AVAILABLE ;
 int FCF_IN_USE ;
 int FCF_REDISC_EVT ;
 int FCF_REDISC_FOV ;
 int FCF_REDISC_PEND ;
 int FCF_TS_INPROG ;
 int HBA_DEVLOSS_TMO ;
 int KERN_ERR ;
 int KERN_INFO ;
 int KERN_WARNING ;
 int LOG_FIP ;
 scalar_t__ LPFC_FCF_FOV ;
 scalar_t__ LPFC_FCOE_FCF_GET_FIRST ;
 scalar_t__ LPFC_FCOE_FCF_NEXT_NONE ;
 scalar_t__ LPFC_FCOE_IGNORE_VID ;
 int LPFC_SKIP_UNREG_FCF ;
 int RECORD_VALID ;
 int __lpfc_sli4_stop_fcf_redisc_wait_timer (struct lpfc_hba*) ;
 int __lpfc_update_fcf_record (struct lpfc_hba*,struct lpfc_fcf_rec*,struct fcf_record*,scalar_t__,scalar_t__,int) ;
 scalar_t__ bf_get (int ,struct fcf_record*) ;
 int jiffies ;
 scalar_t__ lpfc_check_pending_fcoe_event (struct lpfc_hba*,int ) ;
 int lpfc_fcf_record_fcf_avail ;
 int lpfc_fcf_record_fcf_index ;
 int lpfc_fcf_record_fcf_sol ;
 int lpfc_fcf_record_fcf_valid ;
 int lpfc_match_fcf_conn_list (struct lpfc_hba*,struct fcf_record*,scalar_t__*,scalar_t__*,scalar_t__*) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,...) ;
 int lpfc_register_fcf (struct lpfc_hba*) ;
 int lpfc_sli4_fcf_pri_list_add (struct lpfc_hba*,scalar_t__,struct fcf_record*) ;
 int lpfc_sli4_fcf_pri_list_del (struct lpfc_hba*,scalar_t__) ;
 struct fcf_record* lpfc_sli4_fcf_rec_mbox_parse (struct lpfc_hba*,int *,scalar_t__*) ;
 scalar_t__ lpfc_sli4_fcf_record_match (struct lpfc_hba*,struct lpfc_fcf_rec*,struct fcf_record*,scalar_t__) ;
 int lpfc_sli4_fcf_scan_read_fcf_rec (struct lpfc_hba*,scalar_t__) ;
 int lpfc_sli4_log_fcf_record_info (struct lpfc_hba*,struct fcf_record*,scalar_t__,scalar_t__) ;
 int lpfc_sli4_mbox_cmd_free (struct lpfc_hba*,int *) ;
 int lpfc_sli4_new_fcf_random_select (struct lpfc_hba*,int) ;
 int lpfc_unregister_fcf (struct lpfc_hba*) ;
 int lpfc_unregister_fcf_rescan (struct lpfc_hba*) ;
 int memcpy (struct lpfc_fcf_rec*,struct lpfc_fcf_rec*,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int srandom32 (scalar_t__) ;

void
lpfc_mbx_cmpl_fcf_scan_read_fcf_rec(struct lpfc_hba *phba, LPFC_MBOXQ_t *mboxq)
{
 struct fcf_record *new_fcf_record;
 uint32_t boot_flag, addr_mode;
 uint16_t fcf_index, next_fcf_index;
 struct lpfc_fcf_rec *fcf_rec = ((void*)0);
 uint16_t vlan_id;
 uint32_t seed;
 bool select_new_fcf;
 int rc;


 if (lpfc_check_pending_fcoe_event(phba, LPFC_SKIP_UNREG_FCF)) {
  lpfc_sli4_mbox_cmd_free(phba, mboxq);
  return;
 }


 new_fcf_record = lpfc_sli4_fcf_rec_mbox_parse(phba, mboxq,
            &next_fcf_index);
 if (!new_fcf_record) {
  lpfc_printf_log(phba, KERN_ERR, LOG_FIP,
    "2765 Mailbox command READ_FCF_RECORD "
    "failed to retrieve a FCF record.\n");

  spin_lock_irq(&phba->hbalock);
  phba->hba_flag &= ~FCF_TS_INPROG;
  spin_unlock_irq(&phba->hbalock);
  lpfc_sli4_mbox_cmd_free(phba, mboxq);
  return;
 }


 rc = lpfc_match_fcf_conn_list(phba, new_fcf_record, &boot_flag,
          &addr_mode, &vlan_id);


 lpfc_sli4_log_fcf_record_info(phba, new_fcf_record, vlan_id,
          next_fcf_index);






 if (!rc) {
  lpfc_sli4_fcf_pri_list_del(phba,
     bf_get(lpfc_fcf_record_fcf_index,
            new_fcf_record));
  lpfc_printf_log(phba, KERN_WARNING, LOG_FIP,
    "2781 FCF (x%x) failed connection "
    "list check: (x%x/x%x/%x)\n",
    bf_get(lpfc_fcf_record_fcf_index,
           new_fcf_record),
    bf_get(lpfc_fcf_record_fcf_avail,
           new_fcf_record),
    bf_get(lpfc_fcf_record_fcf_valid,
           new_fcf_record),
    bf_get(lpfc_fcf_record_fcf_sol,
           new_fcf_record));
  if ((phba->fcf.fcf_flag & FCF_IN_USE) &&
      lpfc_sli4_fcf_record_match(phba, &phba->fcf.current_rec,
      new_fcf_record, LPFC_FCOE_IGNORE_VID)) {
   if (bf_get(lpfc_fcf_record_fcf_index, new_fcf_record) !=
       phba->fcf.current_rec.fcf_indx) {
    lpfc_printf_log(phba, KERN_ERR, LOG_FIP,
     "2862 FCF (x%x) matches property "
     "of in-use FCF (x%x)\n",
     bf_get(lpfc_fcf_record_fcf_index,
            new_fcf_record),
     phba->fcf.current_rec.fcf_indx);
    goto read_next_fcf;
   }






   if (!(phba->fcf.fcf_flag & FCF_REDISC_PEND) &&
       !(phba->fcf.fcf_flag & FCF_REDISC_FOV)) {
    lpfc_printf_log(phba, KERN_WARNING, LOG_FIP,
      "2835 Invalid in-use FCF "
      "(x%x), enter FCF failover "
      "table scan.\n",
      phba->fcf.current_rec.fcf_indx);
    spin_lock_irq(&phba->hbalock);
    phba->fcf.fcf_flag |= FCF_REDISC_FOV;
    spin_unlock_irq(&phba->hbalock);
    lpfc_sli4_mbox_cmd_free(phba, mboxq);
    lpfc_sli4_fcf_scan_read_fcf_rec(phba,
      LPFC_FCOE_FCF_GET_FIRST);
    return;
   }
  }
  goto read_next_fcf;
 } else {
  fcf_index = bf_get(lpfc_fcf_record_fcf_index, new_fcf_record);
  rc = lpfc_sli4_fcf_pri_list_add(phba, fcf_index,
       new_fcf_record);
  if (rc)
   goto read_next_fcf;
 }







 spin_lock_irq(&phba->hbalock);
 if (phba->fcf.fcf_flag & FCF_IN_USE) {
  if (phba->cfg_fcf_failover_policy == LPFC_FCF_FOV &&
   lpfc_sli4_fcf_record_match(phba, &phba->fcf.current_rec,
      new_fcf_record, vlan_id)) {
   if (bf_get(lpfc_fcf_record_fcf_index, new_fcf_record) ==
       phba->fcf.current_rec.fcf_indx) {
    phba->fcf.fcf_flag |= FCF_AVAILABLE;
    if (phba->fcf.fcf_flag & FCF_REDISC_PEND)

     __lpfc_sli4_stop_fcf_redisc_wait_timer(
         phba);
    else if (phba->fcf.fcf_flag & FCF_REDISC_FOV)

     phba->fcf.fcf_flag &= ~FCF_REDISC_FOV;
    spin_unlock_irq(&phba->hbalock);
    lpfc_printf_log(phba, KERN_INFO, LOG_FIP,
      "2836 New FCF matches in-use "
      "FCF (x%x), port_state:x%x, "
      "fc_flag:x%x\n",
      phba->fcf.current_rec.fcf_indx,
      phba->pport->port_state,
      phba->pport->fc_flag);
    goto out;
   } else
    lpfc_printf_log(phba, KERN_ERR, LOG_FIP,
     "2863 New FCF (x%x) matches "
     "property of in-use FCF (x%x)\n",
     bf_get(lpfc_fcf_record_fcf_index,
            new_fcf_record),
     phba->fcf.current_rec.fcf_indx);
  }







  if (!(phba->fcf.fcf_flag & FCF_REDISC_FOV)) {
   spin_unlock_irq(&phba->hbalock);
   goto read_next_fcf;
  }
 }




 if (phba->fcf.fcf_flag & FCF_REDISC_FOV)
  fcf_rec = &phba->fcf.failover_rec;
 else
  fcf_rec = &phba->fcf.current_rec;

 if (phba->fcf.fcf_flag & FCF_AVAILABLE) {





  if (boot_flag && !(fcf_rec->flag & BOOT_ENABLE)) {

   lpfc_printf_log(phba, KERN_INFO, LOG_FIP,
     "2837 Update current FCF record "
     "(x%x) with new FCF record (x%x)\n",
     fcf_rec->fcf_indx,
     bf_get(lpfc_fcf_record_fcf_index,
     new_fcf_record));
   __lpfc_update_fcf_record(phba, fcf_rec, new_fcf_record,
     addr_mode, vlan_id, BOOT_ENABLE);
   spin_unlock_irq(&phba->hbalock);
   goto read_next_fcf;
  }





  if (!boot_flag && (fcf_rec->flag & BOOT_ENABLE)) {
   spin_unlock_irq(&phba->hbalock);
   goto read_next_fcf;
  }




  if (new_fcf_record->fip_priority < fcf_rec->priority) {

   lpfc_printf_log(phba, KERN_INFO, LOG_FIP,
     "2838 Update current FCF record "
     "(x%x) with new FCF record (x%x)\n",
     fcf_rec->fcf_indx,
     bf_get(lpfc_fcf_record_fcf_index,
            new_fcf_record));
   __lpfc_update_fcf_record(phba, fcf_rec, new_fcf_record,
     addr_mode, vlan_id, 0);

   phba->fcf.eligible_fcf_cnt = 1;
  } else if (new_fcf_record->fip_priority == fcf_rec->priority) {

   phba->fcf.eligible_fcf_cnt++;
   select_new_fcf = lpfc_sli4_new_fcf_random_select(phba,
      phba->fcf.eligible_fcf_cnt);
   if (select_new_fcf) {
    lpfc_printf_log(phba, KERN_INFO, LOG_FIP,
     "2839 Update current FCF record "
     "(x%x) with new FCF record (x%x)\n",
     fcf_rec->fcf_indx,
     bf_get(lpfc_fcf_record_fcf_index,
            new_fcf_record));

    __lpfc_update_fcf_record(phba, fcf_rec,
        new_fcf_record,
        addr_mode, vlan_id, 0);
   }
  }
  spin_unlock_irq(&phba->hbalock);
  goto read_next_fcf;
 }




 if (fcf_rec) {
  lpfc_printf_log(phba, KERN_INFO, LOG_FIP,
    "2840 Update initial FCF candidate "
    "with FCF (x%x)\n",
    bf_get(lpfc_fcf_record_fcf_index,
           new_fcf_record));
  __lpfc_update_fcf_record(phba, fcf_rec, new_fcf_record,
      addr_mode, vlan_id, (boot_flag ?
      BOOT_ENABLE : 0));
  phba->fcf.fcf_flag |= FCF_AVAILABLE;

  phba->fcf.eligible_fcf_cnt = 1;

  seed = (uint32_t)(0xFFFFFFFF & jiffies);
  srandom32(seed);
 }
 spin_unlock_irq(&phba->hbalock);
 goto read_next_fcf;

read_next_fcf:
 lpfc_sli4_mbox_cmd_free(phba, mboxq);
 if (next_fcf_index == LPFC_FCOE_FCF_NEXT_NONE || next_fcf_index == 0) {
  if (phba->fcf.fcf_flag & FCF_REDISC_FOV) {
   if (!(phba->fcf.failover_rec.flag & RECORD_VALID)) {
    lpfc_printf_log(phba, KERN_WARNING, LOG_FIP,
            "2782 No suitable FCF found: "
            "(x%x/x%x)\n",
            phba->fcoe_eventtag_at_fcf_scan,
            bf_get(lpfc_fcf_record_fcf_index,
            new_fcf_record));
    spin_lock_irq(&phba->hbalock);
    if (phba->hba_flag & HBA_DEVLOSS_TMO) {
     phba->hba_flag &= ~FCF_TS_INPROG;
     spin_unlock_irq(&phba->hbalock);

     lpfc_printf_log(phba, KERN_INFO,
       LOG_FIP,
       "2864 On devloss tmo "
       "unreg in-use FCF and "
       "rescan FCF table\n");
     lpfc_unregister_fcf_rescan(phba);
     return;
    }



    phba->hba_flag &= ~FCF_TS_INPROG;
    spin_unlock_irq(&phba->hbalock);
    return;
   }
   lpfc_unregister_fcf(phba);


   lpfc_printf_log(phba, KERN_INFO, LOG_FIP,
     "2842 Replace in-use FCF (x%x) "
     "with failover FCF (x%x)\n",
     phba->fcf.current_rec.fcf_indx,
     phba->fcf.failover_rec.fcf_indx);
   memcpy(&phba->fcf.current_rec,
          &phba->fcf.failover_rec,
          sizeof(struct lpfc_fcf_rec));





   spin_lock_irq(&phba->hbalock);
   phba->fcf.fcf_flag &= ~FCF_REDISC_FOV;
   spin_unlock_irq(&phba->hbalock);

   lpfc_register_fcf(phba);
  } else {




   if ((phba->fcf.fcf_flag & FCF_REDISC_EVT) ||
       (phba->fcf.fcf_flag & FCF_REDISC_PEND))
    return;

   if (phba->cfg_fcf_failover_policy == LPFC_FCF_FOV &&
    phba->fcf.fcf_flag & FCF_IN_USE) {






    lpfc_printf_log(phba, KERN_INFO, LOG_FIP,
      "2841 In-use FCF record (x%x) "
      "not reported, entering fast "
      "FCF failover mode scanning.\n",
      phba->fcf.current_rec.fcf_indx);
    spin_lock_irq(&phba->hbalock);
    phba->fcf.fcf_flag |= FCF_REDISC_FOV;
    spin_unlock_irq(&phba->hbalock);
    lpfc_sli4_fcf_scan_read_fcf_rec(phba,
      LPFC_FCOE_FCF_GET_FIRST);
    return;
   }

   lpfc_register_fcf(phba);
  }
 } else
  lpfc_sli4_fcf_scan_read_fcf_rec(phba, next_fcf_index);
 return;

out:
 lpfc_sli4_mbox_cmd_free(phba, mboxq);
 lpfc_register_fcf(phba);

 return;
}
