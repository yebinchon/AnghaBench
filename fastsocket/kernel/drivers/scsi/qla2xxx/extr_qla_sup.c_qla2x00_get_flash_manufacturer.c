
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct qla_hw_data {int dummy; } ;


 int qla2x00_read_flash_byte (struct qla_hw_data*,int) ;
 int qla2x00_write_flash_byte (struct qla_hw_data*,int,int) ;

__attribute__((used)) static void
qla2x00_get_flash_manufacturer(struct qla_hw_data *ha, uint8_t *man_id,
    uint8_t *flash_id)
{
 qla2x00_write_flash_byte(ha, 0x5555, 0xaa);
 qla2x00_write_flash_byte(ha, 0x2aaa, 0x55);
 qla2x00_write_flash_byte(ha, 0x5555, 0x90);
 *man_id = qla2x00_read_flash_byte(ha, 0x0000);
 *flash_id = qla2x00_read_flash_byte(ha, 0x0001);
 qla2x00_write_flash_byte(ha, 0x5555, 0xaa);
 qla2x00_write_flash_byte(ha, 0x2aaa, 0x55);
 qla2x00_write_flash_byte(ha, 0x5555, 0xf0);
}
