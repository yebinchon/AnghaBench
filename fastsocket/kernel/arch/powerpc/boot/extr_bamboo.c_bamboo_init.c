
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int exit; int fixups; } ;


 int _dtb_start ;
 int bamboo_fixups ;
 void* bamboo_mac0 ;
 void* bamboo_mac1 ;
 int fdt_init (int ) ;
 int ibm44x_dbcr_reset ;
 TYPE_1__ platform_ops ;
 int serial_console_init () ;

void bamboo_init(void *mac0, void *mac1)
{
 platform_ops.fixups = bamboo_fixups;
 platform_ops.exit = ibm44x_dbcr_reset;
 bamboo_mac0 = mac0;
 bamboo_mac1 = mac1;
 fdt_init(_dtb_start);
 serial_console_init();
}
