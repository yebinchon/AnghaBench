
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bus_type {int * bus_attrs; } ;


 scalar_t__ attr_name (int ) ;
 int bus_create_file (struct bus_type*,int *) ;
 int bus_remove_file (struct bus_type*,int *) ;

__attribute__((used)) static int bus_add_attrs(struct bus_type *bus)
{
 int error = 0;
 int i;

 if (bus->bus_attrs) {
  for (i = 0; attr_name(bus->bus_attrs[i]); i++) {
   error = bus_create_file(bus, &bus->bus_attrs[i]);
   if (error)
    goto err;
  }
 }
done:
 return error;
err:
 while (--i >= 0)
  bus_remove_file(bus, &bus->bus_attrs[i]);
 goto done;
}
