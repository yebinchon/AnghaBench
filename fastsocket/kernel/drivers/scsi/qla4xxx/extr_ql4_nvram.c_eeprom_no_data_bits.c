
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_qla_host {int dummy; } ;


 int FM93C56A_DATA_BITS_16 ;

__attribute__((used)) static inline int eeprom_no_data_bits(struct scsi_qla_host *ha)
{
 return FM93C56A_DATA_BITS_16;
}
