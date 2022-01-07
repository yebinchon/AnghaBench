
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_hba {int cfg_aer_support; } ;


 int EINVAL ;
 int KERN_ERR ;
 int LOG_INIT ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,int) ;

__attribute__((used)) static int
lpfc_aer_support_init(struct lpfc_hba *phba, int val)
{
 if (val == 0 || val == 1) {
  phba->cfg_aer_support = val;
  return 0;
 }
 lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
   "2712 lpfc_aer_support attribute value %d out "
   "of range, allowed values are 0|1, setting it "
   "to default value of 1\n", val);

 phba->cfg_aer_support = 1;
 return -EINVAL;
}
