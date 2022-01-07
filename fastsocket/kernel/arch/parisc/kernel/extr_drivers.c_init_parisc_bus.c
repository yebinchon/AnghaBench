
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ bus_register (int *) ;
 scalar_t__ device_register (int *) ;
 int get_device (int *) ;
 int panic (char*) ;
 int parisc_bus_type ;
 int root ;

void init_parisc_bus(void)
{
 if (bus_register(&parisc_bus_type))
  panic("Could not register PA-RISC bus type\n");
 if (device_register(&root))
  panic("Could not register PA-RISC root device\n");
 get_device(&root);
}
