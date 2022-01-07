
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct Scsi_Host {int dummy; } ;
struct TYPE_3__ {int result; int (* scsi_done ) (TYPE_1__*) ;} ;


 int Interrupt_Cntl_port ;
 TYPE_1__* current_SC ;
 int fd_mcs_make_bus_idle (struct Scsi_Host*) ;
 scalar_t__ in_command ;
 scalar_t__ in_interrupt_flag ;
 int outb (int,int ) ;
 int panic (char*) ;
 int stub1 (TYPE_1__*) ;

__attribute__((used)) static void my_done(struct Scsi_Host *shpnt, int error)
{
 if (in_command) {
  in_command = 0;
  outb(0x00, Interrupt_Cntl_port);
  fd_mcs_make_bus_idle(shpnt);
  current_SC->result = error;
  current_SC->scsi_done(current_SC);
 } else {
  panic("fd_mcs: my_done() called outside of command\n");
 }



}
