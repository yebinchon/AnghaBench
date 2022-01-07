
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mgsl_struct {unsigned int io_base; unsigned int irq_level; unsigned int dma_level; int io_addr_size; scalar_t__ irq_flags; int bus_type; } ;


 scalar_t__ DEBUG_LEVEL_ERROR ;
 scalar_t__ DEBUG_LEVEL_INFO ;
 int MAX_ISA_DEVICES ;
 int MGSL_BUS_TYPE_ISA ;
 scalar_t__ debug_level ;
 scalar_t__* dma ;
 scalar_t__* io ;
 scalar_t__* irq ;
 unsigned int irq_canonicalize (unsigned int) ;
 int mgsl_add_device (struct mgsl_struct*) ;
 struct mgsl_struct* mgsl_allocate_device () ;
 int printk (char*,...) ;

__attribute__((used)) static void mgsl_enum_isa_devices(void)
{
 struct mgsl_struct *info;
 int i;



 for (i=0 ;(i < MAX_ISA_DEVICES) && io[i] && irq[i]; i++){
  if ( debug_level >= DEBUG_LEVEL_INFO )
   printk("ISA device specified io=%04X,irq=%d,dma=%d\n",
    io[i], irq[i], dma[i] );

  info = mgsl_allocate_device();
  if ( !info ) {

   if ( debug_level >= DEBUG_LEVEL_ERROR )
    printk( "can't allocate device instance data.\n");
   continue;
  }


  info->io_base = (unsigned int)io[i];
  info->irq_level = (unsigned int)irq[i];
  info->irq_level = irq_canonicalize(info->irq_level);
  info->dma_level = (unsigned int)dma[i];
  info->bus_type = MGSL_BUS_TYPE_ISA;
  info->io_addr_size = 16;
  info->irq_flags = 0;

  mgsl_add_device( info );
 }
}
