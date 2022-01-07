
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_hba {int cfg_sriov_nr_virtfn; } ;


 int EINVAL ;
 int KERN_ERR ;
 int LOG_INIT ;
 int LPFC_MAX_VFN_PER_PFN ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,int) ;

__attribute__((used)) static int
lpfc_sriov_nr_virtfn_init(struct lpfc_hba *phba, int val)
{
 if (val >= 0 && val <= LPFC_MAX_VFN_PER_PFN) {
  phba->cfg_sriov_nr_virtfn = val;
  return 0;
 }

 lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
   "3017 Enabling %d virtual functions is not "
   "allowed.\n", val);
 return -EINVAL;
}
