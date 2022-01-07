
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_4__ {int status; } ;
struct pm8001_hba_info {TYPE_2__ encrypt_info; TYPE_1__* chip; } ;
struct TYPE_3__ {scalar_t__ encrypt; } ;


 int EBUSY ;
 int PM8001_FAIL_DBG (struct pm8001_hba_info*,int ) ;
 int PM8001_INIT_DBG (struct pm8001_hba_info*,int ) ;
 scalar_t__ PM8001_MAX_SPCV_INB_NUM ;
 scalar_t__ PM8001_MAX_SPCV_OUTB_NUM ;
 int check_fw_ready (struct pm8001_hba_info*) ;
 int init_default_table_values (struct pm8001_hba_info*) ;
 int init_pci_device_addresses (struct pm8001_hba_info*) ;
 scalar_t__ mpi_init_check (struct pm8001_hba_info*) ;
 int pm8001_printk (char*) ;
 int pm80xx_encrypt_update (struct pm8001_hba_info*) ;
 int pm80xx_get_encrypt_info (struct pm8001_hba_info*) ;
 int pm80xx_set_sas_protocol_timer_config (struct pm8001_hba_info*) ;
 int read_general_status_table (struct pm8001_hba_info*) ;
 int read_inbnd_queue_table (struct pm8001_hba_info*) ;
 int read_main_config_table (struct pm8001_hba_info*) ;
 int read_outbnd_queue_table (struct pm8001_hba_info*) ;
 int read_phy_attr_table (struct pm8001_hba_info*) ;
 int update_inbnd_queue_table (struct pm8001_hba_info*,scalar_t__) ;
 int update_main_config_table (struct pm8001_hba_info*) ;
 int update_outbnd_queue_table (struct pm8001_hba_info*,scalar_t__) ;

__attribute__((used)) static int pm80xx_chip_init(struct pm8001_hba_info *pm8001_ha)
{
 int ret;
 u8 i = 0;


 if (-1 == check_fw_ready(pm8001_ha)) {
  PM8001_FAIL_DBG(pm8001_ha,
   pm8001_printk("Firmware is not ready!\n"));
  return -EBUSY;
 }


 init_pci_device_addresses(pm8001_ha);
 init_default_table_values(pm8001_ha);
 read_main_config_table(pm8001_ha);
 read_general_status_table(pm8001_ha);
 read_inbnd_queue_table(pm8001_ha);
 read_outbnd_queue_table(pm8001_ha);
 read_phy_attr_table(pm8001_ha);


 update_main_config_table(pm8001_ha);
 for (i = 0; i < PM8001_MAX_SPCV_INB_NUM; i++)
  update_inbnd_queue_table(pm8001_ha, i);
 for (i = 0; i < PM8001_MAX_SPCV_OUTB_NUM; i++)
  update_outbnd_queue_table(pm8001_ha, i);


 if (0 == mpi_init_check(pm8001_ha)) {
  PM8001_INIT_DBG(pm8001_ha,
   pm8001_printk("MPI initialize successful!\n"));
 } else
  return -EBUSY;


 ret = pm80xx_set_sas_protocol_timer_config(pm8001_ha);


 if (pm8001_ha->chip->encrypt) {
  PM8001_INIT_DBG(pm8001_ha,
   pm8001_printk("Checking for encryption\n"));
  ret = pm80xx_get_encrypt_info(pm8001_ha);
  if (ret == -1) {
   PM8001_INIT_DBG(pm8001_ha,
    pm8001_printk("Encryption error !!\n"));
   if (pm8001_ha->encrypt_info.status == 0x81) {
    PM8001_INIT_DBG(pm8001_ha, pm8001_printk(
     "Encryption enabled with error."
     "Saving encryption key to flash\n"));
    pm80xx_encrypt_update(pm8001_ha);
   }
  }
 }
 return 0;
}
