
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bus_type {TYPE_1__* p; } ;
struct TYPE_2__ {int subsys; } ;


 int kset_put (int *) ;

__attribute__((used)) static void bus_put(struct bus_type *bus)
{
 if (bus)
  kset_put(&bus->p->subsys);
}
