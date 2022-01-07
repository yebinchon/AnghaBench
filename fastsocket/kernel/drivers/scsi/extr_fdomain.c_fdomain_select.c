
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PARITY_MASK ;
 scalar_t__ SCSI_Cntl ;
 scalar_t__ SCSI_Data_NoACK ;
 scalar_t__ SCSI_Status ;
 scalar_t__ TMC_Cntl ;
 int adapter_mask ;
 int fdomain_make_bus_idle () ;
 int inb (scalar_t__) ;
 int mdelay (int) ;
 int outb (int,scalar_t__) ;
 scalar_t__ port_base ;
 int printk (char*) ;

__attribute__((used)) static int fdomain_select( int target )
{
   int status;
   unsigned long timeout;




   outb(0x82, port_base + SCSI_Cntl);
   outb(adapter_mask | (1 << target), port_base + SCSI_Data_NoACK);


   outb(PARITY_MASK, port_base + TMC_Cntl);

   timeout = 350;

   do {
      status = inb(port_base + SCSI_Status);
      if (status & 1) {

  outb(0x80, port_base + SCSI_Cntl);
  return 0;
      }
      mdelay(1);
   } while (--timeout);

   fdomain_make_bus_idle();
   return 1;
}
