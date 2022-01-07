
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct scsi_cmnd {int* cmnd; int result; } ;


 int ILLEGAL_REQUEST ;



__attribute__((used)) static bool storvsc_scsi_cmd_ok(struct scsi_cmnd *scmnd)
{
 bool allowed = 1;
 u8 scsi_op = scmnd->cmnd[0];

 switch (scsi_op) {

 case 128:




 case 129:
  scmnd->result = ILLEGAL_REQUEST << 16;
  allowed = 0;
  break;
 default:
  break;
 }
 return allowed;
}
