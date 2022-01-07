
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int exit; int fixups; } ;


 int _dtb_start ;
 scalar_t__ _end ;
 int fdt_init (int ) ;
 int ibm40x_dbcr_reset ;
 TYPE_1__ platform_ops ;
 int serial_console_init () ;
 int simple_alloc_init (scalar_t__,unsigned long,int,int) ;
 int walnut_fixups ;

void platform_init(void)
{
 unsigned long end_of_ram = 0x2000000;
 unsigned long avail_ram = end_of_ram - (unsigned long) _end;

 simple_alloc_init(_end, avail_ram, 32, 32);
 platform_ops.fixups = walnut_fixups;
 platform_ops.exit = ibm40x_dbcr_reset;
 fdt_init(_dtb_start);
 serial_console_init();
}
