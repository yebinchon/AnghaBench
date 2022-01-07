
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct scsi_cmnd {int result; } ;


 int CAM_STATUS_MASK ;

__attribute__((used)) static inline
void ahc_cmd_set_transaction_status(struct scsi_cmnd *cmd, uint32_t status)
{
 cmd->result &= ~(CAM_STATUS_MASK << 16);
 cmd->result |= status << 16;
}
