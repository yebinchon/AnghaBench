
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Scsi_Host {int dummy; } ;


 int PARITY_MASK ;
 int SCSI_Cntl_port ;
 int SCSI_Data_NoACK_port ;
 int SCSI_Status_port ;
 int TMC_Cntl_port ;
 int adapter_mask ;
 int fd_mcs_make_bus_idle (struct Scsi_Host*) ;
 int inb (int ) ;
 int outb (int,int ) ;
 int printk (char*) ;
 int udelay (int) ;

__attribute__((used)) static int fd_mcs_select(struct Scsi_Host *shpnt, int target)
{
 int status;
 unsigned long timeout;

 outb(0x82, SCSI_Cntl_port);
 outb(adapter_mask | (1 << target), SCSI_Data_NoACK_port);


 outb(PARITY_MASK, TMC_Cntl_port);

 timeout = 350;


 do {
  status = inb(SCSI_Status_port);
  if (status & 1) {

   outb(0x80, SCSI_Cntl_port);
   return 0;
  }
  udelay(1000);
 } while (--timeout);


 fd_mcs_make_bus_idle(shpnt);
 return 1;
}
