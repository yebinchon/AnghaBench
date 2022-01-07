
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sg_io_hdr {int dummy; } ;
struct nvme_ns {int dummy; } ;


 int ILLEGAL_REQUEST ;
 int SAM_STAT_CHECK_CONDITION ;
 int SCSI_ASCQ_CAUSE_NOT_REPORTABLE ;
 int SCSI_ASC_ILLEGAL_COMMAND ;
 int nvme_trans_completion (struct sg_io_hdr*,int ,int ,int ,int ) ;

__attribute__((used)) static int nvme_trans_security_protocol(struct nvme_ns *ns,
     struct sg_io_hdr *hdr,
     u8 *cmd)
{
 return nvme_trans_completion(hdr, SAM_STAT_CHECK_CONDITION,
    ILLEGAL_REQUEST, SCSI_ASC_ILLEGAL_COMMAND,
    SCSI_ASCQ_CAUSE_NOT_REPORTABLE);
}
