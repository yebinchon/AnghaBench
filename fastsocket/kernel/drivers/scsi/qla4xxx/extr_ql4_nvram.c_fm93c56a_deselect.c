
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_qla_host {int eeprom_cmd_data; } ;


 int AUBURN_EEPROM_CS_0 ;
 int eeprom_cmd (int,struct scsi_qla_host*) ;

__attribute__((used)) static int fm93c56a_deselect(struct scsi_qla_host * ha)
{
 ha->eeprom_cmd_data = AUBURN_EEPROM_CS_0 | 0x000f0000;
 eeprom_cmd(ha->eeprom_cmd_data, ha);
 return 1;
}
