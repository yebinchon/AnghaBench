
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bus_register (int *) ;
 int ecard_bus_type ;

__attribute__((used)) static int ecard_bus_init(void)
{
 return bus_register(&ecard_bus_type);
}
