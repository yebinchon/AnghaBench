
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int result; } ;



__attribute__((used)) static inline void
sym_set_cam_status(struct scsi_cmnd *cmd, int status)
{
 cmd->result &= ~(0xff << 16);
 cmd->result |= (status << 16);
}
