
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bus_type {int * bus_attrs; } ;


 scalar_t__ attr_name (int ) ;
 int bus_remove_file (struct bus_type*,int *) ;

__attribute__((used)) static void bus_remove_attrs(struct bus_type *bus)
{
 int i;

 if (bus->bus_attrs) {
  for (i = 0; attr_name(bus->bus_attrs[i]); i++)
   bus_remove_file(bus, &bus->bus_attrs[i]);
 }
}
