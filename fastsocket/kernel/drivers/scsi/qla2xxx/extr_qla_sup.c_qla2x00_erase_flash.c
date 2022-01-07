
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct qla_hw_data {int dummy; } ;


 scalar_t__ IS_OEM_001 (struct qla_hw_data*) ;
 int qla2x00_poll_flash (struct qla_hw_data*,int,int,int ,int ) ;
 int qla2x00_write_flash_byte (struct qla_hw_data*,int,int) ;
 int udelay (int) ;

__attribute__((used)) static int
qla2x00_erase_flash(struct qla_hw_data *ha, uint8_t man_id, uint8_t flash_id)
{

 if (IS_OEM_001(ha)) {
  qla2x00_write_flash_byte(ha, 0xaaa, 0xaa);
  qla2x00_write_flash_byte(ha, 0x555, 0x55);
  qla2x00_write_flash_byte(ha, 0xaaa, 0x80);
  qla2x00_write_flash_byte(ha, 0xaaa, 0xaa);
  qla2x00_write_flash_byte(ha, 0x555, 0x55);
  qla2x00_write_flash_byte(ha, 0xaaa, 0x10);
 } else {
  qla2x00_write_flash_byte(ha, 0x5555, 0xaa);
  qla2x00_write_flash_byte(ha, 0x2aaa, 0x55);
  qla2x00_write_flash_byte(ha, 0x5555, 0x80);
  qla2x00_write_flash_byte(ha, 0x5555, 0xaa);
  qla2x00_write_flash_byte(ha, 0x2aaa, 0x55);
  qla2x00_write_flash_byte(ha, 0x5555, 0x10);
 }

 udelay(150);


 return qla2x00_poll_flash(ha, 0x00, 0x80, man_id, flash_id);
}
