
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_cmnd {unsigned char* cmnd; TYPE_1__* device; } ;
struct TYPE_2__ {int lun; int id; } ;


 int COMMAND_SIZE (unsigned char) ;
 int H_NO (struct scsi_cmnd*) ;
 int SPRINTF (char*,...) ;

__attribute__((used)) static char *lprint_Scsi_Cmnd(struct scsi_cmnd *cmd, char *pos, char *buffer,
         int length)
{
    int i, s;
    unsigned char *command;
    SPRINTF("scsi%d: destination target %d, lun %d\n",
     H_NO(cmd), cmd->device->id, cmd->device->lun);
    SPRINTF("        command = ");
    command = cmd->cmnd;
    SPRINTF("%2d (0x%02x)", command[0], command[0]);
    for (i = 1, s = COMMAND_SIZE(command[0]); i < s; ++i)
 SPRINTF(" %02x", command[i]);
    SPRINTF("\n");
    return pos;
}
