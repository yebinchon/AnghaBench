
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pm8001_hba_info {int dummy; } ;


 int EBUSY ;
 int MSGU_SCRATCH_PAD_1 ;
 int PM8001_FAIL_DBG (struct pm8001_hba_info*,int ) ;
 int PM8001_INIT_DBG (struct pm8001_hba_info*,int ) ;
 int PM8001_MSG_DBG (struct pm8001_hba_info*,int ) ;
 int SCRATCH_PAD1_BOOTSTATE_CRIT_ERROR ;
 int SCRATCH_PAD1_BOOTSTATE_HDA_BOOTSTRAP ;
 int SCRATCH_PAD1_BOOTSTATE_HDA_SEEPROM ;
 int SCRATCH_PAD1_BOOTSTATE_HDA_SOFTRESET ;
 int SCRATCH_PAD1_BOOTSTATE_MASK ;
 int SPC_REG_SOFT_RESET ;
 int SPCv_NORMAL_RESET_VALUE ;
 int SPCv_SOFT_RESET_NORMAL_RESET_OCCURED ;
 int SPCv_SOFT_RESET_READ_MASK ;
 int check_fw_ready (struct pm8001_hba_info*) ;
 int mdelay (int) ;
 scalar_t__ mpi_uninit_check (struct pm8001_hba_info*) ;
 int pm8001_cr32 (struct pm8001_hba_info*,int ,int ) ;
 int pm8001_cw32 (struct pm8001_hba_info*,int ,int ,int ) ;
 int pm8001_printk (char*,...) ;

__attribute__((used)) static int
pm80xx_chip_soft_rst(struct pm8001_hba_info *pm8001_ha)
{
 u32 regval;
 u32 bootloader_state;


 if (mpi_uninit_check(pm8001_ha) != 0) {
  PM8001_FAIL_DBG(pm8001_ha,
   pm8001_printk("MPI state is not ready\n"));
  return -1;
 }


 regval = pm8001_cr32(pm8001_ha, 0, SPC_REG_SOFT_RESET);
 PM8001_INIT_DBG(pm8001_ha,
  pm8001_printk("reset register before write : 0x%x\n", regval));

 pm8001_cw32(pm8001_ha, 0, SPC_REG_SOFT_RESET, SPCv_NORMAL_RESET_VALUE);
 mdelay(500);

 regval = pm8001_cr32(pm8001_ha, 0, SPC_REG_SOFT_RESET);
 PM8001_INIT_DBG(pm8001_ha,
 pm8001_printk("reset register after write 0x%x\n", regval));

 if ((regval & SPCv_SOFT_RESET_READ_MASK) ==
   SPCv_SOFT_RESET_NORMAL_RESET_OCCURED) {
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk(" soft reset successful [regval: 0x%x]\n",
     regval));
 } else {
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk(" soft reset failed [regval: 0x%x]\n",
     regval));


  bootloader_state =
   pm8001_cr32(pm8001_ha, 0, MSGU_SCRATCH_PAD_1) &
   SCRATCH_PAD1_BOOTSTATE_MASK;

  if (bootloader_state == SCRATCH_PAD1_BOOTSTATE_HDA_SEEPROM) {
   PM8001_MSG_DBG(pm8001_ha, pm8001_printk(
    "Bootloader state - HDA mode SEEPROM\n"));
  } else if (bootloader_state ==
    SCRATCH_PAD1_BOOTSTATE_HDA_BOOTSTRAP) {
   PM8001_MSG_DBG(pm8001_ha, pm8001_printk(
    "Bootloader state - HDA mode Bootstrap Pin\n"));
  } else if (bootloader_state ==
    SCRATCH_PAD1_BOOTSTATE_HDA_SOFTRESET) {
   PM8001_MSG_DBG(pm8001_ha, pm8001_printk(
    "Bootloader state - HDA mode soft reset\n"));
  } else if (bootloader_state ==
     SCRATCH_PAD1_BOOTSTATE_CRIT_ERROR) {
   PM8001_MSG_DBG(pm8001_ha, pm8001_printk(
    "Bootloader state-HDA mode critical error\n"));
  }
  return -EBUSY;
 }


 if (-1 == check_fw_ready(pm8001_ha)) {
  PM8001_FAIL_DBG(pm8001_ha,
   pm8001_printk("Firmware is not ready!\n"));
  return -EBUSY;
 }
 PM8001_INIT_DBG(pm8001_ha,
  pm8001_printk("SPCv soft reset Complete\n"));
 return 0;
}
