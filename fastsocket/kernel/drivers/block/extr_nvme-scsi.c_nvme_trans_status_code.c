
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sg_io_hdr {int dummy; } ;


 int ABORTED_COMMAND ;
 int HARDWARE_ERROR ;
 int ILLEGAL_REQUEST ;
 int MEDIUM_ERROR ;
 int MISCOMPARE ;
 int NOT_READY ;
 int NO_SENSE ;
 int SAM_STAT_CHECK_CONDITION ;
 int SAM_STAT_GOOD ;
 int SAM_STAT_TASK_ABORTED ;
 int SCSI_ASCQ_CAUSE_NOT_REPORTABLE ;
 int SCSI_ASCQ_FORMAT_COMMAND_FAILED ;
 int SCSI_ASCQ_INVALID_LUN_ID ;
 int SCSI_ASCQ_LOG_BLOCK_APPTAG_CHECK_FAILED ;
 int SCSI_ASCQ_LOG_BLOCK_GUARD_CHECK_FAILED ;
 int SCSI_ASCQ_LOG_BLOCK_REFTAG_CHECK_FAILED ;
 int SCSI_ASCQ_POWER_LOSS_EXPECTED ;
 int SCSI_ASC_ACCESS_DENIED_INVALID_LUN_ID ;
 int SCSI_ASC_FORMAT_COMMAND_FAILED ;
 int SCSI_ASC_ILLEGAL_BLOCK ;
 int SCSI_ASC_ILLEGAL_COMMAND ;
 int SCSI_ASC_INTERNAL_TARGET_FAILURE ;
 int SCSI_ASC_INVALID_CDB ;
 int SCSI_ASC_LOG_BLOCK_APPTAG_CHECK_FAILED ;
 int SCSI_ASC_LOG_BLOCK_GUARD_CHECK_FAILED ;
 int SCSI_ASC_LOG_BLOCK_REFTAG_CHECK_FAILED ;
 int SCSI_ASC_LUN_NOT_READY ;
 int SCSI_ASC_MISCOMPARE_DURING_VERIFY ;
 int SCSI_ASC_NO_SENSE ;
 int SCSI_ASC_PERIPHERAL_DEV_WRITE_FAULT ;
 int SCSI_ASC_UNRECOVERED_READ_ERROR ;
 int SCSI_ASC_WARNING ;
 int SNTI_TRANSLATION_SUCCESS ;
 int nvme_trans_completion (struct sg_io_hdr*,int ,int ,int ,int ) ;

__attribute__((used)) static int nvme_trans_status_code(struct sg_io_hdr *hdr, int nvme_sc)
{
 u8 status, sense_key, asc, ascq;
 int res = SNTI_TRANSLATION_SUCCESS;


 if (nvme_sc < 0)
  return nvme_sc;


 nvme_sc &= 0x7FF;

 switch (nvme_sc) {

 case 129:
  status = SAM_STAT_GOOD;
  sense_key = NO_SENSE;
  asc = SCSI_ASC_NO_SENSE;
  ascq = SCSI_ASCQ_CAUSE_NOT_REPORTABLE;
  break;
 case 138:
  status = SAM_STAT_CHECK_CONDITION;
  sense_key = ILLEGAL_REQUEST;
  asc = SCSI_ASC_ILLEGAL_COMMAND;
  ascq = SCSI_ASCQ_CAUSE_NOT_REPORTABLE;
  break;
 case 142:
  status = SAM_STAT_CHECK_CONDITION;
  sense_key = ILLEGAL_REQUEST;
  asc = SCSI_ASC_INVALID_CDB;
  ascq = SCSI_ASCQ_CAUSE_NOT_REPORTABLE;
  break;
 case 149:
  status = SAM_STAT_CHECK_CONDITION;
  sense_key = MEDIUM_ERROR;
  asc = SCSI_ASC_NO_SENSE;
  ascq = SCSI_ASCQ_CAUSE_NOT_REPORTABLE;
  break;
 case 134:
  status = SAM_STAT_TASK_ABORTED;
  sense_key = ABORTED_COMMAND;
  asc = SCSI_ASC_WARNING;
  ascq = SCSI_ASCQ_POWER_LOSS_EXPECTED;
  break;
 case 143:
  status = SAM_STAT_CHECK_CONDITION;
  sense_key = HARDWARE_ERROR;
  asc = SCSI_ASC_INTERNAL_TARGET_FAILURE;
  ascq = SCSI_ASCQ_CAUSE_NOT_REPORTABLE;
  break;
 case 159:
  status = SAM_STAT_TASK_ABORTED;
  sense_key = ABORTED_COMMAND;
  asc = SCSI_ASC_NO_SENSE;
  ascq = SCSI_ASCQ_CAUSE_NOT_REPORTABLE;
  break;
 case 160:
  status = SAM_STAT_TASK_ABORTED;
  sense_key = ABORTED_COMMAND;
  asc = SCSI_ASC_NO_SENSE;
  ascq = SCSI_ASCQ_CAUSE_NOT_REPORTABLE;
  break;
 case 146:
  status = SAM_STAT_TASK_ABORTED;
  sense_key = ABORTED_COMMAND;
  asc = SCSI_ASC_NO_SENSE;
  ascq = SCSI_ASCQ_CAUSE_NOT_REPORTABLE;
  break;
 case 145:
  status = SAM_STAT_TASK_ABORTED;
  sense_key = ABORTED_COMMAND;
  asc = SCSI_ASC_NO_SENSE;
  ascq = SCSI_ASCQ_CAUSE_NOT_REPORTABLE;
  break;
 case 139:
  status = SAM_STAT_CHECK_CONDITION;
  sense_key = ILLEGAL_REQUEST;
  asc = SCSI_ASC_ACCESS_DENIED_INVALID_LUN_ID;
  ascq = SCSI_ASCQ_INVALID_LUN_ID;
  break;
 case 136:
  status = SAM_STAT_CHECK_CONDITION;
  sense_key = ILLEGAL_REQUEST;
  asc = SCSI_ASC_ILLEGAL_BLOCK;
  ascq = SCSI_ASCQ_CAUSE_NOT_REPORTABLE;
  break;
 case 154:
  status = SAM_STAT_CHECK_CONDITION;
  sense_key = MEDIUM_ERROR;
  asc = SCSI_ASC_NO_SENSE;
  ascq = SCSI_ASCQ_CAUSE_NOT_REPORTABLE;
  break;
 case 135:
  status = SAM_STAT_CHECK_CONDITION;
  sense_key = NOT_READY;
  asc = SCSI_ASC_LUN_NOT_READY;
  ascq = SCSI_ASCQ_CAUSE_NOT_REPORTABLE;
  break;


 case 141:
  status = SAM_STAT_CHECK_CONDITION;
  sense_key = ILLEGAL_REQUEST;
  asc = SCSI_ASC_FORMAT_COMMAND_FAILED;
  ascq = SCSI_ASCQ_FORMAT_COMMAND_FAILED;
  break;
 case 155:
  status = SAM_STAT_CHECK_CONDITION;
  sense_key = ILLEGAL_REQUEST;
  asc = SCSI_ASC_INVALID_CDB;
  ascq = SCSI_ASCQ_CAUSE_NOT_REPORTABLE;
  break;


 case 128:
  status = SAM_STAT_CHECK_CONDITION;
  sense_key = MEDIUM_ERROR;
  asc = SCSI_ASC_PERIPHERAL_DEV_WRITE_FAULT;
  ascq = SCSI_ASCQ_CAUSE_NOT_REPORTABLE;
  break;
 case 131:
  status = SAM_STAT_CHECK_CONDITION;
  sense_key = MEDIUM_ERROR;
  asc = SCSI_ASC_UNRECOVERED_READ_ERROR;
  ascq = SCSI_ASCQ_CAUSE_NOT_REPORTABLE;
  break;
 case 144:
  status = SAM_STAT_CHECK_CONDITION;
  sense_key = MEDIUM_ERROR;
  asc = SCSI_ASC_LOG_BLOCK_GUARD_CHECK_FAILED;
  ascq = SCSI_ASCQ_LOG_BLOCK_GUARD_CHECK_FAILED;
  break;
 case 157:
  status = SAM_STAT_CHECK_CONDITION;
  sense_key = MEDIUM_ERROR;
  asc = SCSI_ASC_LOG_BLOCK_APPTAG_CHECK_FAILED;
  ascq = SCSI_ASCQ_LOG_BLOCK_APPTAG_CHECK_FAILED;
  break;
 case 130:
  status = SAM_STAT_CHECK_CONDITION;
  sense_key = MEDIUM_ERROR;
  asc = SCSI_ASC_LOG_BLOCK_REFTAG_CHECK_FAILED;
  ascq = SCSI_ASCQ_LOG_BLOCK_REFTAG_CHECK_FAILED;
  break;
 case 151:
  status = SAM_STAT_CHECK_CONDITION;
  sense_key = MISCOMPARE;
  asc = SCSI_ASC_MISCOMPARE_DURING_VERIFY;
  ascq = SCSI_ASCQ_CAUSE_NOT_REPORTABLE;
  break;
 case 158:
  status = SAM_STAT_CHECK_CONDITION;
  sense_key = ILLEGAL_REQUEST;
  asc = SCSI_ASC_ACCESS_DENIED_INVALID_LUN_ID;
  ascq = SCSI_ASCQ_INVALID_LUN_ID;
  break;


 case 153:
 case 152:
 case 150:
 case 133:
 case 132:
 case 162:
 case 161:
 case 156:
 case 147:
 case 148:
 case 137:
 case 140:
 default:
  status = SAM_STAT_CHECK_CONDITION;
  sense_key = ILLEGAL_REQUEST;
  asc = SCSI_ASC_NO_SENSE;
  ascq = SCSI_ASCQ_CAUSE_NOT_REPORTABLE;
  break;
 }

 res = nvme_trans_completion(hdr, status, sense_key, asc, ascq);

 return res;
}
