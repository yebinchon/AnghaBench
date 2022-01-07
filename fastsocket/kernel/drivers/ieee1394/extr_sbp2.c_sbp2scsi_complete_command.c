
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct scsi_cmnd {int result; } ;
struct sbp2_lu {int ne; } ;


 int CHECK_CONDITION ;
 int DID_BUS_BUSY ;
 int DID_ERROR ;
 int DID_NO_CONNECT ;
 int DID_OK ;
 int SBP2_ERR (char*,...) ;







 int hpsb_node_entry_valid (int ) ;
 int scsi_print_command (struct scsi_cmnd*) ;

__attribute__((used)) static void sbp2scsi_complete_command(struct sbp2_lu *lu, u32 scsi_status,
          struct scsi_cmnd *SCpnt,
          void (*done)(struct scsi_cmnd *))
{
 if (!SCpnt) {
  SBP2_ERR("SCpnt is NULL");
  return;
 }

 switch (scsi_status) {
 case 130:
  SCpnt->result = DID_OK << 16;
  break;

 case 134:
  SBP2_ERR("SBP2_SCSI_STATUS_BUSY");
  SCpnt->result = DID_BUS_BUSY << 16;
  break;

 case 133:
  SCpnt->result = CHECK_CONDITION << 1 | DID_OK << 16;
  break;

 case 128:
  SBP2_ERR("SBP2_SCSI_STATUS_SELECTION_TIMEOUT");
  SCpnt->result = DID_NO_CONNECT << 16;
  scsi_print_command(SCpnt);
  break;

 case 131:
 case 129:
 case 132:
  SBP2_ERR("Bad SCSI status = %x", scsi_status);
  SCpnt->result = DID_ERROR << 16;
  scsi_print_command(SCpnt);
  break;

 default:
  SBP2_ERR("Unsupported SCSI status = %x", scsi_status);
  SCpnt->result = DID_ERROR << 16;
 }



 if (!hpsb_node_entry_valid(lu->ne)
     && (scsi_status != 130)) {
  SBP2_ERR("Completing command with busy (bus reset)");
  SCpnt->result = DID_BUS_BUSY << 16;
 }


 done(SCpnt);
}
