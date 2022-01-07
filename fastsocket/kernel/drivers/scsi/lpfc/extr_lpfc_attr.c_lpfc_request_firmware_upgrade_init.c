
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_hba {int cfg_request_firmware_upgrade; } ;


 int EINVAL ;

__attribute__((used)) static int
lpfc_request_firmware_upgrade_init(struct lpfc_hba *phba, int val)
{
 if (val >= 0 && val <= 1) {
  phba->cfg_request_firmware_upgrade = val;
  return 0;
 }
 return -EINVAL;
}
