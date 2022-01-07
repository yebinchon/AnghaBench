
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_3__ {int bar; int method; } ;
struct TYPE_4__ {TYPE_1__ flash; } ;
struct asd_ha_struct {TYPE_2__ hw_prof; } ;


 int ASD_DPRINTK (char*,int) ;
 int FAIL_WRITE_FLASH ;


 int asd_check_flash_type (struct asd_ha_struct*) ;
 scalar_t__ asd_chk_write_status (struct asd_ha_struct*,int,int ) ;
 int asd_erase_nv_sector (struct asd_ha_struct*,int,int) ;
 int asd_reset_flash (struct asd_ha_struct*) ;
 int asd_write_reg_byte (struct asd_ha_struct*,int,int const) ;

int asd_write_flash_seg(struct asd_ha_struct *asd_ha,
   const void *src, u32 dest_offset, u32 bytes_to_write)
{
 const u8 *src_buf;
 u32 nv_offset, reg, i;
 int err;

 reg = asd_ha->hw_prof.flash.bar;
 src_buf = ((void*)0);

 err = asd_check_flash_type(asd_ha);
 if (err) {
  ASD_DPRINTK("couldn't find the type of flash. err=%d\n", err);
  return err;
 }

 nv_offset = dest_offset;
 err = asd_erase_nv_sector(asd_ha, nv_offset, bytes_to_write);
 if (err) {
  ASD_DPRINTK("Erase failed at offset:0x%x\n",
   nv_offset);
  return err;
 }

 err = asd_reset_flash(asd_ha);
 if (err) {
  ASD_DPRINTK("couldn't reset flash. err=%d\n", err);
  return err;
 }

 src_buf = (const u8 *)src;
 for (i = 0; i < bytes_to_write; i++) {

  switch (asd_ha->hw_prof.flash.method) {
  case 129:
  {
   asd_write_reg_byte(asd_ha,
     (reg + 0xAAA), 0xAA);
   asd_write_reg_byte(asd_ha,
     (reg + 0x555), 0x55);
   asd_write_reg_byte(asd_ha,
     (reg + 0xAAA), 0xA0);
   asd_write_reg_byte(asd_ha,
     (reg + nv_offset + i),
     (*(src_buf + i)));
   break;
  }
  case 128:
  {
   asd_write_reg_byte(asd_ha,
     (reg + 0x555), 0xAA);
   asd_write_reg_byte(asd_ha,
     (reg + 0x2AA), 0x55);
   asd_write_reg_byte(asd_ha,
     (reg + 0x555), 0xA0);
   asd_write_reg_byte(asd_ha,
     (reg + nv_offset + i),
     (*(src_buf + i)));
   break;
  }
  default:
   break;
  }
  if (asd_chk_write_status(asd_ha,
    (nv_offset + i), 0) != 0) {
   ASD_DPRINTK("aicx: Write failed at offset:0x%x\n",
    reg + nv_offset + i);
   return FAIL_WRITE_FLASH;
  }
 }

 err = asd_reset_flash(asd_ha);
 if (err) {
  ASD_DPRINTK("couldn't reset flash. err=%d\n", err);
  return err;
 }
 return 0;
}
