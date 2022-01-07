
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int device; int * cmnd; int result; } ;




 scalar_t__ COMMAND_COMPLETE ;


 scalar_t__ DID_OK ;
 scalar_t__ DID_RESET ;
 int FAILED ;



 int NEEDS_RETRY ;


 int SUCCESS ;
 int TEST_UNIT_READY ;
 scalar_t__ host_byte (int ) ;
 scalar_t__ msg_byte (int ) ;
 int scsi_check_sense (struct scsi_cmnd*) ;
 int scsi_handle_queue_full (int ) ;
 int scsi_handle_queue_ramp_up (int ) ;
 int status_byte (int ) ;

__attribute__((used)) static int scsi_eh_completed_normally(struct scsi_cmnd *scmd)
{




 if (host_byte(scmd->result) == DID_RESET) {






  return scsi_check_sense(scmd);
 }
 if (host_byte(scmd->result) != DID_OK)
  return FAILED;




 if (msg_byte(scmd->result) != COMMAND_COMPLETE)
  return FAILED;





 switch (status_byte(scmd->result)) {
 case 132:
  scsi_handle_queue_ramp_up(scmd->device);
 case 134:
  return SUCCESS;
 case 135:
  return scsi_check_sense(scmd);
 case 133:
 case 130:
 case 131:



  return SUCCESS;
 case 128:
  if (scmd->cmnd[0] == TEST_UNIT_READY)


   return SUCCESS;

  return FAILED;
 case 129:
  scsi_handle_queue_full(scmd->device);

 case 136:
  return NEEDS_RETRY;
 default:
  return FAILED;
 }
 return FAILED;
}
