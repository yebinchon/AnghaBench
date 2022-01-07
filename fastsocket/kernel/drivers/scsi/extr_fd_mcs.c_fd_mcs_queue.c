
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct Scsi_Host {int dummy; } ;
struct TYPE_16__ {scalar_t__ length; } ;
struct TYPE_14__ {int phase; scalar_t__ sent_command; scalar_t__ have_data_in; scalar_t__ Message; scalar_t__ Status; scalar_t__ buffers_residual; TYPE_5__* buffer; scalar_t__ this_residual; int * ptr; } ;
struct TYPE_15__ {void (* scsi_done ) (TYPE_3__*) ;TYPE_2__ SCp; scalar_t__ cmnd; int target; TYPE_1__* device; } ;
struct TYPE_13__ {struct Scsi_Host* host; } ;
typedef TYPE_3__ Scsi_Cmnd ;


 int Interrupt_Cntl_port ;
 int PARITY_MASK ;
 int SCSI_Cntl_port ;
 int SCSI_Data_NoACK_port ;
 int TMC_Cntl_port ;
 int adapter_mask ;
 TYPE_3__* current_SC ;
 int fd_mcs_make_bus_idle (struct Scsi_Host*) ;
 int in_arbitration ;
 int in_command ;
 int outb (int,int ) ;
 int panic (char*) ;
 int printk (char*,int ,unsigned char,int ,int ) ;
 int scsi_bufflen (TYPE_3__*) ;
 int scsi_sg_count (TYPE_3__*) ;
 TYPE_5__* scsi_sglist (TYPE_3__*) ;
 int * sg_virt (TYPE_5__*) ;

__attribute__((used)) static int fd_mcs_queue(Scsi_Cmnd * SCpnt, void (*done) (Scsi_Cmnd *))
{
 struct Scsi_Host *shpnt = SCpnt->device->host;

 if (in_command) {
  panic("fd_mcs: fd_mcs_queue() NOT REENTRANT!\n");
 }






 fd_mcs_make_bus_idle(shpnt);

 SCpnt->scsi_done = done;
 current_SC = SCpnt;



 if (scsi_bufflen(current_SC)) {
  current_SC->SCp.buffer = scsi_sglist(current_SC);
  current_SC->SCp.ptr = sg_virt(current_SC->SCp.buffer);
  current_SC->SCp.this_residual = current_SC->SCp.buffer->length;
  current_SC->SCp.buffers_residual = scsi_sg_count(current_SC) - 1;
 } else {
  current_SC->SCp.ptr = ((void*)0);
  current_SC->SCp.this_residual = 0;
  current_SC->SCp.buffer = ((void*)0);
  current_SC->SCp.buffers_residual = 0;
 }


 current_SC->SCp.Status = 0;
 current_SC->SCp.Message = 0;
 current_SC->SCp.have_data_in = 0;
 current_SC->SCp.sent_command = 0;
 current_SC->SCp.phase = in_arbitration;


 outb(0x00, Interrupt_Cntl_port);
 outb(0x00, SCSI_Cntl_port);
 outb(adapter_mask, SCSI_Data_NoACK_port);
 in_command = 1;
 outb(0x20, Interrupt_Cntl_port);
 outb(0x14 | PARITY_MASK, TMC_Cntl_port);

 return 0;
}
