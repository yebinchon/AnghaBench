
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sg_io_hdr {int dummy; } ;
struct nvme_queue {int dummy; } ;
struct nvme_ns {int dev; int ns_id; } ;
struct TYPE_2__ {int nsid; int opcode; } ;
struct nvme_command {TYPE_1__ common; } ;
typedef int c ;


 int GET_U8_FROM_CDB (int*,int ) ;
 int ILLEGAL_REQUEST ;
 int NIBBLE_SHIFT ;
 int NVME_IO_TIMEOUT ;
 int SAM_STAT_CHECK_CONDITION ;
 int SCSI_ASCQ_CAUSE_NOT_REPORTABLE ;
 int SCSI_ASC_INVALID_CDB ;
 int SNTI_TRANSLATION_SUCCESS ;
 int START_STOP_UNIT_CDB_IMMED_MASK ;
 int START_STOP_UNIT_CDB_IMMED_OFFSET ;
 int START_STOP_UNIT_CDB_NO_FLUSH_MASK ;
 int START_STOP_UNIT_CDB_NO_FLUSH_OFFSET ;
 int START_STOP_UNIT_CDB_POWER_COND_MASK ;
 int START_STOP_UNIT_CDB_POWER_COND_MOD_MASK ;
 int START_STOP_UNIT_CDB_POWER_COND_MOD_OFFSET ;
 int START_STOP_UNIT_CDB_POWER_COND_OFFSET ;
 int START_STOP_UNIT_CDB_START_MASK ;
 int START_STOP_UNIT_CDB_START_OFFSET ;
 int cpu_to_le32 (int ) ;
 struct nvme_queue* get_nvmeq (int ) ;
 int memset (struct nvme_command*,int ,int) ;
 int nvme_cmd_flush ;
 int nvme_submit_sync_cmd (struct nvme_queue*,struct nvme_command*,int *,int ) ;
 int nvme_trans_completion (struct sg_io_hdr*,int ,int ,int ,int ) ;
 int nvme_trans_power_state (struct nvme_ns*,struct sg_io_hdr*,int,int,int) ;
 int nvme_trans_status_code (struct sg_io_hdr*,int) ;
 int put_nvmeq (struct nvme_queue*) ;

__attribute__((used)) static int nvme_trans_start_stop(struct nvme_ns *ns, struct sg_io_hdr *hdr,
       u8 *cmd)
{
 int res = SNTI_TRANSLATION_SUCCESS;
 int nvme_sc;
 struct nvme_queue *nvmeq;
 struct nvme_command c;
 u8 immed, pcmod, pc, no_flush, start;

 immed = GET_U8_FROM_CDB(cmd, START_STOP_UNIT_CDB_IMMED_OFFSET);
 pcmod = GET_U8_FROM_CDB(cmd, START_STOP_UNIT_CDB_POWER_COND_MOD_OFFSET);
 pc = GET_U8_FROM_CDB(cmd, START_STOP_UNIT_CDB_POWER_COND_OFFSET);
 no_flush = GET_U8_FROM_CDB(cmd, START_STOP_UNIT_CDB_NO_FLUSH_OFFSET);
 start = GET_U8_FROM_CDB(cmd, START_STOP_UNIT_CDB_START_OFFSET);

 immed &= START_STOP_UNIT_CDB_IMMED_MASK;
 pcmod &= START_STOP_UNIT_CDB_POWER_COND_MOD_MASK;
 pc = (pc & START_STOP_UNIT_CDB_POWER_COND_MASK) >> NIBBLE_SHIFT;
 no_flush &= START_STOP_UNIT_CDB_NO_FLUSH_MASK;
 start &= START_STOP_UNIT_CDB_START_MASK;

 if (immed != 0) {
  res = nvme_trans_completion(hdr, SAM_STAT_CHECK_CONDITION,
     ILLEGAL_REQUEST, SCSI_ASC_INVALID_CDB,
     SCSI_ASCQ_CAUSE_NOT_REPORTABLE);
 } else {
  if (no_flush == 0) {

   memset(&c, 0, sizeof(c));
   c.common.opcode = nvme_cmd_flush;
   c.common.nsid = cpu_to_le32(ns->ns_id);

   nvmeq = get_nvmeq(ns->dev);
   put_nvmeq(nvmeq);
   nvme_sc = nvme_submit_sync_cmd(nvmeq, &c, ((void*)0), NVME_IO_TIMEOUT);

   res = nvme_trans_status_code(hdr, nvme_sc);
   if (res)
    goto out;
   if (nvme_sc) {
    res = nvme_sc;
    goto out;
   }
  }

  res = nvme_trans_power_state(ns, hdr, pc, pcmod, start);
 }

 out:
 return res;
}
