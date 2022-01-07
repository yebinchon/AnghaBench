
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct scsi_cmnd {int result; } ;



__attribute__((used)) static inline
void ahc_cmd_set_scsi_status(struct scsi_cmnd *cmd, uint32_t status)
{
 cmd->result &= ~0xFFFF;
 cmd->result |= status;
}
