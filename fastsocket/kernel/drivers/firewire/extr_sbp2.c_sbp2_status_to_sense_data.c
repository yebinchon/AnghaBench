
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int DID_ERROR ;
 int DID_OK ;







__attribute__((used)) static unsigned int sbp2_status_to_sense_data(u8 *sbp2_status, u8 *sense_data)
{
 int sam_status;

 sense_data[0] = 0x70;
 sense_data[1] = 0x0;
 sense_data[2] = sbp2_status[1];
 sense_data[3] = sbp2_status[4];
 sense_data[4] = sbp2_status[5];
 sense_data[5] = sbp2_status[6];
 sense_data[6] = sbp2_status[7];
 sense_data[7] = 10;
 sense_data[8] = sbp2_status[8];
 sense_data[9] = sbp2_status[9];
 sense_data[10] = sbp2_status[10];
 sense_data[11] = sbp2_status[11];
 sense_data[12] = sbp2_status[2];
 sense_data[13] = sbp2_status[3];
 sense_data[14] = sbp2_status[12];
 sense_data[15] = sbp2_status[13];

 sam_status = sbp2_status[0] & 0x3f;

 switch (sam_status) {
 case 129:
 case 132:
 case 130:
 case 133:
 case 128:
 case 131:
  return DID_OK << 16 | sam_status;

 default:
  return DID_ERROR << 16;
 }
}
