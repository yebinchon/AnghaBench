
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct scsi_cmnd {int serial_number; } ;



__attribute__((used)) static u32 adpt_cmd_to_context(struct scsi_cmnd *cmd)
{
 return (u32)cmd->serial_number;
}
