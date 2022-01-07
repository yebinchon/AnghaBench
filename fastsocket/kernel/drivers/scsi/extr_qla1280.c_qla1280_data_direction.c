
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct scsi_cmnd {int sc_data_direction; } ;


 int BIT_5 ;
 int BIT_6 ;





__attribute__((used)) static inline uint16_t
qla1280_data_direction(struct scsi_cmnd *cmnd)
{
 switch(cmnd->sc_data_direction) {
 case 130:
  return BIT_5;
 case 128:
  return BIT_6;
 case 131:
  return BIT_5 | BIT_6;





 case 129:
 default:
  return 0;
 }
}
