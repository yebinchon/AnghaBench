
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_qla_host {int eeprom_cmd_data; } ;


 int AUBURN_EEPROM_CLK_FALL ;
 int AUBURN_EEPROM_CLK_RISE ;
 int AUBURN_EEPROM_DI_1 ;
 int eeprom_cmd (int,struct scsi_qla_host*) ;
 int eeprom_no_data_bits (struct scsi_qla_host*) ;
 int isp_nvram (struct scsi_qla_host*) ;
 int readw (int ) ;

__attribute__((used)) static int fm93c56a_datain(struct scsi_qla_host * ha, unsigned short *value)
{
 int i;
 int data = 0;
 int dataBit;



 for (i = 0; i < eeprom_no_data_bits(ha); i++) {
  eeprom_cmd(ha->eeprom_cmd_data |
         AUBURN_EEPROM_CLK_RISE, ha);
  eeprom_cmd(ha->eeprom_cmd_data |
         AUBURN_EEPROM_CLK_FALL, ha);

  dataBit = (readw(isp_nvram(ha)) & AUBURN_EEPROM_DI_1) ? 1 : 0;

  data = (data << 1) | dataBit;
 }

 *value = data;
 return 1;
}
