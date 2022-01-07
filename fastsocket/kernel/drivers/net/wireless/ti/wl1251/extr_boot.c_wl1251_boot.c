
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int radio_type; int major; int minor; } ;
struct wl1251 {int fw_len; TYPE_1__ boot_attr; scalar_t__ use_eeprom; } ;


 int ACX_EEPROMLESS_IND_REG ;
 int ACX_REG_ECPU_CONTROL ;
 int ACX_REG_EE_START ;
 int DEBUG_BOOT ;
 int ECPU_CONTROL_HALT ;
 int EIO ;
 int SCR_PAD2 ;
 int SCR_PAD3 ;
 int START_EEPROM_MGR ;
 int USE_EEPROM ;
 int msleep (int) ;
 int wl1251_boot_init_seq (struct wl1251*) ;
 int wl1251_boot_run_firmware (struct wl1251*) ;
 int wl1251_boot_soft_reset (struct wl1251*) ;
 int wl1251_boot_upload_firmware (struct wl1251*) ;
 int wl1251_boot_upload_nvs (struct wl1251*) ;
 int wl1251_debug (int ,char*,int,...) ;
 int wl1251_error (char*) ;
 int wl1251_reg_read32 (struct wl1251*,int ) ;
 int wl1251_reg_write32 (struct wl1251*,int ,int) ;

int wl1251_boot(struct wl1251 *wl)
{
 int ret = 0, minor_minor_e2_ver;
 u32 tmp, boot_data;


 wl1251_reg_write32(wl, ACX_REG_ECPU_CONTROL, ECPU_CONTROL_HALT);

 ret = wl1251_boot_soft_reset(wl);
 if (ret < 0)
  goto out;


 if (wl->use_eeprom) {
  wl1251_reg_write32(wl, ACX_REG_EE_START, START_EEPROM_MGR);

  msleep(40);
  wl1251_reg_write32(wl, ACX_EEPROMLESS_IND_REG, USE_EEPROM);
 } else {
  ret = wl1251_boot_upload_nvs(wl);
  if (ret < 0)
   goto out;



  wl1251_reg_write32(wl, ACX_EEPROMLESS_IND_REG, wl->fw_len);
 }


 tmp = wl1251_reg_read32(wl, SCR_PAD2);


 wl->boot_attr.radio_type = (tmp & 0x0000FF00) >> 8;
 wl->boot_attr.major = (tmp & 0x00FF0000) >> 16;
 tmp = wl1251_reg_read32(wl, SCR_PAD3);


 wl->boot_attr.minor = (tmp & 0x00FF0000) >> 16;
 minor_minor_e2_ver = (tmp & 0xFF000000) >> 24;

 wl1251_debug(DEBUG_BOOT, "radioType 0x%x majorE2Ver 0x%x "
       "minorE2Ver 0x%x minor_minor_e2_ver 0x%x",
       wl->boot_attr.radio_type, wl->boot_attr.major,
       wl->boot_attr.minor, minor_minor_e2_ver);

 ret = wl1251_boot_init_seq(wl);
 if (ret < 0)
  goto out;


 boot_data = wl1251_reg_read32(wl, ACX_REG_ECPU_CONTROL);

 wl1251_debug(DEBUG_BOOT, "halt boot_data 0x%x", boot_data);




 if ((boot_data & ECPU_CONTROL_HALT) == 0) {
  wl1251_error("boot failed, ECPU_CONTROL_HALT not set");
  ret = -EIO;
  goto out;
 }

 ret = wl1251_boot_upload_firmware(wl);
 if (ret < 0)
  goto out;


 ret = wl1251_boot_run_firmware(wl);
 if (ret < 0)
  goto out;

out:
 return ret;
}
