
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int result; int (* scsi_done ) (TYPE_1__*) ;} ;


 scalar_t__ Interrupt_Cntl ;
 TYPE_1__* current_SC ;
 int fdomain_make_bus_idle () ;
 scalar_t__ in_command ;
 scalar_t__ in_interrupt_flag ;
 int outb (int,scalar_t__) ;
 int panic (char*) ;
 scalar_t__ port_base ;
 int stub1 (TYPE_1__*) ;

__attribute__((used)) static void my_done(int error)
{
   if (in_command) {
      in_command = 0;
      outb(0x00, port_base + Interrupt_Cntl);
      fdomain_make_bus_idle();
      current_SC->result = error;
      if (current_SC->scsi_done)
     current_SC->scsi_done( current_SC );
      else panic( "scsi: <fdomain> current_SC->scsi_done() == NULL" );
   } else {
      panic( "scsi: <fdomain> my_done() called outside of command\n" );
   }



}
