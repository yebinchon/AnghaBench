
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct scsi_qla_host {int dummy; } ;


 int eeprom_readword (int,int *,struct scsi_qla_host*) ;

u16 rd_nvram_word(struct scsi_qla_host * ha, int offset)
{
 u16 val = 0;


 eeprom_readword(offset, &val, ha);
 return val;
}
