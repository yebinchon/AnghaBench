
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int exit; int fixups; } ;


 int CUBOOT_INIT () ;
 int _dtb_start ;
 int bridge_base ;
 int c2k_fixups ;
 int c2k_reset ;
 int exit () ;
 int fdt_init (int ) ;
 int mv64x60_get_bridge_base () ;
 TYPE_1__ platform_ops ;
 scalar_t__ serial_console_init () ;

void platform_init(unsigned long r3, unsigned long r4, unsigned long r5,
   unsigned long r6, unsigned long r7)
{
 CUBOOT_INIT();

 fdt_init(_dtb_start);

 bridge_base = mv64x60_get_bridge_base();

 platform_ops.fixups = c2k_fixups;
 platform_ops.exit = c2k_reset;

 if (serial_console_init() < 0)
  exit();
}
