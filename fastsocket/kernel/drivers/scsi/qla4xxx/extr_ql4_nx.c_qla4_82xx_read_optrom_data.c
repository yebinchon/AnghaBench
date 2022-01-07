
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct scsi_qla_host {int dummy; } ;


 int qla4_82xx_read_flash_data (struct scsi_qla_host*,int *,int ,int ) ;

__attribute__((used)) static uint8_t *
qla4_82xx_read_optrom_data(struct scsi_qla_host *ha, uint8_t *buf,
  uint32_t offset, uint32_t length)
{
 qla4_82xx_read_flash_data(ha, (uint32_t *)buf, offset, length);
 return buf;
}
