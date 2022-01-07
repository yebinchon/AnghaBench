
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
struct sg_io_hdr {int cmd_len; int * cmdp; } ;
struct nvme_ns {int dummy; } ;


 int BLK_MAX_CDB ;
 int EFAULT ;
 int EMSGSIZE ;

 int ILLEGAL_REQUEST ;

 int IS_READ_CAP_16 (unsigned int*) ;
 int SAM_STAT_CHECK_CONDITION ;
 int SCSI_ASCQ_CAUSE_NOT_REPORTABLE ;
 int SCSI_ASC_ILLEGAL_COMMAND ;
 scalar_t__ copy_from_user (unsigned int*,int *,int ) ;
 int nvme_trans_completion (struct sg_io_hdr*,int ,int ,int ,int ) ;
 int nvme_trans_format_unit (struct nvme_ns*,struct sg_io_hdr*,unsigned int*) ;
 int nvme_trans_inquiry (struct nvme_ns*,struct sg_io_hdr*,unsigned int*) ;
 int nvme_trans_io (struct nvme_ns*,struct sg_io_hdr*,int,unsigned int*) ;
 int nvme_trans_log_sense (struct nvme_ns*,struct sg_io_hdr*,unsigned int*) ;
 int nvme_trans_mode_select (struct nvme_ns*,struct sg_io_hdr*,unsigned int*) ;
 int nvme_trans_mode_sense (struct nvme_ns*,struct sg_io_hdr*,unsigned int*) ;
 int nvme_trans_read_capacity (struct nvme_ns*,struct sg_io_hdr*,unsigned int*) ;
 int nvme_trans_report_luns (struct nvme_ns*,struct sg_io_hdr*,unsigned int*) ;
 int nvme_trans_request_sense (struct nvme_ns*,struct sg_io_hdr*,unsigned int*) ;
 int nvme_trans_security_protocol (struct nvme_ns*,struct sg_io_hdr*,unsigned int*) ;
 int nvme_trans_start_stop (struct nvme_ns*,struct sg_io_hdr*,unsigned int*) ;
 int nvme_trans_synchronize_cache (struct nvme_ns*,struct sg_io_hdr*,unsigned int*) ;
 int nvme_trans_test_unit_ready (struct nvme_ns*,struct sg_io_hdr*,unsigned int*) ;
 int nvme_trans_unmap (struct nvme_ns*,struct sg_io_hdr*,unsigned int*) ;
 int nvme_trans_write_buffer (struct nvme_ns*,struct sg_io_hdr*,unsigned int*) ;

__attribute__((used)) static int nvme_scsi_translate(struct nvme_ns *ns, struct sg_io_hdr *hdr)
{
 u8 cmd[BLK_MAX_CDB];
 int retcode;
 unsigned int opcode;

 if (hdr->cmdp == ((void*)0))
  return -EMSGSIZE;
 if (copy_from_user(cmd, hdr->cmdp, hdr->cmd_len))
  return -EFAULT;

 opcode = cmd[0];

 switch (opcode) {
 case 143:
 case 146:
 case 145:
 case 144:
  retcode = nvme_trans_io(ns, hdr, 0, cmd);
  break;
 case 129:
 case 132:
 case 131:
 case 130:
  retcode = nvme_trans_io(ns, hdr, 1, cmd);
  break;
 case 152:
  retcode = nvme_trans_inquiry(ns, hdr, cmd);
  break;
 case 151:
  retcode = nvme_trans_log_sense(ns, hdr, cmd);
  break;
 case 150:
 case 149:
  retcode = nvme_trans_mode_select(ns, hdr, cmd);
  break;
 case 148:
 case 147:
  retcode = nvme_trans_mode_sense(ns, hdr, cmd);
  break;
 case 142:
  retcode = nvme_trans_read_capacity(ns, hdr, cmd);
  break;
 case 137:
  if (IS_READ_CAP_16(cmd))
   retcode = nvme_trans_read_capacity(ns, hdr, cmd);
  else
   goto out;
  break;
 case 141:
  retcode = nvme_trans_report_luns(ns, hdr, cmd);
  break;
 case 140:
  retcode = nvme_trans_request_sense(ns, hdr, cmd);
  break;
 case 139:
 case 138:
  retcode = nvme_trans_security_protocol(ns, hdr, cmd);
  break;
 case 136:
  retcode = nvme_trans_start_stop(ns, hdr, cmd);
  break;
 case 135:
  retcode = nvme_trans_synchronize_cache(ns, hdr, cmd);
  break;
 case 153:
  retcode = nvme_trans_format_unit(ns, hdr, cmd);
  break;
 case 134:
  retcode = nvme_trans_test_unit_ready(ns, hdr, cmd);
  break;
 case 128:
  retcode = nvme_trans_write_buffer(ns, hdr, cmd);
  break;
 case 133:
  retcode = nvme_trans_unmap(ns, hdr, cmd);
  break;
 default:
 out:
  retcode = nvme_trans_completion(hdr, SAM_STAT_CHECK_CONDITION,
    ILLEGAL_REQUEST, SCSI_ASC_ILLEGAL_COMMAND,
    SCSI_ASCQ_CAUSE_NOT_REPORTABLE);
  break;
 }
 return retcode;
}
