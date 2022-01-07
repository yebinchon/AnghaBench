
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct qla_hw_data {int dummy; } ;


 scalar_t__ IS_OEM_001 (struct qla_hw_data*) ;
 int qla2x00_poll_flash (struct qla_hw_data*,int,int,int,int) ;
 int qla2x00_write_flash_byte (struct qla_hw_data*,int,int) ;
 int udelay (int) ;

__attribute__((used)) static int
qla2x00_program_flash_address(struct qla_hw_data *ha, uint32_t addr,
    uint8_t data, uint8_t man_id, uint8_t flash_id)
{

 if (IS_OEM_001(ha)) {
  qla2x00_write_flash_byte(ha, 0xaaa, 0xaa);
  qla2x00_write_flash_byte(ha, 0x555, 0x55);
  qla2x00_write_flash_byte(ha, 0xaaa, 0xa0);
  qla2x00_write_flash_byte(ha, addr, data);
 } else {
  if (man_id == 0xda && flash_id == 0xc1) {
   qla2x00_write_flash_byte(ha, addr, data);
   if (addr & 0x7e)
    return 0;
  } else {
   qla2x00_write_flash_byte(ha, 0x5555, 0xaa);
   qla2x00_write_flash_byte(ha, 0x2aaa, 0x55);
   qla2x00_write_flash_byte(ha, 0x5555, 0xa0);
   qla2x00_write_flash_byte(ha, addr, data);
  }
 }

 udelay(150);


 return qla2x00_poll_flash(ha, addr, data, man_id, flash_id);
}
