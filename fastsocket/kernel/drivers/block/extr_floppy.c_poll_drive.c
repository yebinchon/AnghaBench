
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int flags; } ;
struct TYPE_4__ {int flags; scalar_t__ cmd_count; scalar_t__ track; } ;


 TYPE_3__* DP ;
 int DPRINT (char*) ;
 int FD_DEBUG ;
 int FD_DISK_NEWCHANGE ;
 int SETF (int ) ;
 int WAIT (int ) ;
 int * cont ;
 TYPE_1__ default_raw_cmd ;
 int floppy_ready ;
 int poll_cont ;
 TYPE_1__* raw_cmd ;

__attribute__((used)) static int poll_drive(int interruptible, int flag)
{
 int ret;


 raw_cmd = &default_raw_cmd;
 raw_cmd->flags = flag;
 raw_cmd->track = 0;
 raw_cmd->cmd_count = 0;
 cont = &poll_cont;





 SETF(FD_DISK_NEWCHANGE);
 WAIT(floppy_ready);
 return ret;
}
