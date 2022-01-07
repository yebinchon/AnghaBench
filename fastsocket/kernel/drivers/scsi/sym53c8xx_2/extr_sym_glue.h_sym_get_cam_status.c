
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int result; } ;


 int host_byte (int ) ;

__attribute__((used)) static inline int
sym_get_cam_status(struct scsi_cmnd *cmd)
{
 return host_byte(cmd->result);
}
