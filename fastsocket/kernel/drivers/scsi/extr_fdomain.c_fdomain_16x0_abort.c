
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_cmnd {int dummy; } ;
struct TYPE_3__ {int phase; } ;
struct TYPE_4__ {int result; TYPE_1__ SCp; } ;


 int DID_ABORT ;
 int FAILED ;
 int SUCCESS ;
 int aborted ;
 TYPE_2__* current_SC ;
 int fdomain_make_bus_idle () ;
 int in_command ;
 int my_done (int) ;
 int print_info (struct scsi_cmnd*) ;
 int printk (char*) ;

__attribute__((used)) static int fdomain_16x0_abort(struct scsi_cmnd *SCpnt)
{




   if (!in_command) {



      return FAILED;
   } else printk( "\n" );





   fdomain_make_bus_idle();
   current_SC->SCp.phase |= aborted;
   current_SC->result = DID_ABORT << 16;


   my_done(DID_ABORT << 16);
   return SUCCESS;
}
