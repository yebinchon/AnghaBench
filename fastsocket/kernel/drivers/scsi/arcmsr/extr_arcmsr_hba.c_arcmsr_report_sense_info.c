
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_cmnd {int result; scalar_t__ sense_buffer; } ;
struct SENSE_DATA {int Valid; int ErrorCode; } ;
struct TYPE_2__ {int SenseData; } ;
struct CommandControlBlock {TYPE_1__ arcmsr_cdb; struct scsi_cmnd* pcmd; } ;


 int DID_OK ;
 int SCSI_SENSE_BUFFERSIZE ;
 int SCSI_SENSE_CURRENT_ERRORS ;
 int memcpy (struct SENSE_DATA*,int ,int) ;
 int memset (struct SENSE_DATA*,int ,int) ;

__attribute__((used)) static void arcmsr_report_sense_info(struct CommandControlBlock *ccb)
{

 struct scsi_cmnd *pcmd = ccb->pcmd;
 struct SENSE_DATA *sensebuffer = (struct SENSE_DATA *)pcmd->sense_buffer;
 pcmd->result = DID_OK << 16;
 if (sensebuffer) {
  int sense_data_length =
   sizeof(struct SENSE_DATA) < SCSI_SENSE_BUFFERSIZE
   ? sizeof(struct SENSE_DATA) : SCSI_SENSE_BUFFERSIZE;
  memset(sensebuffer, 0, SCSI_SENSE_BUFFERSIZE);
  memcpy(sensebuffer, ccb->arcmsr_cdb.SenseData, sense_data_length);
  sensebuffer->ErrorCode = SCSI_SENSE_CURRENT_ERRORS;
  sensebuffer->Valid = 1;
 }
}
