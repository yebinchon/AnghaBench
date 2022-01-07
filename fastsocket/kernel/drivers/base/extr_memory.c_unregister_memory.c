
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kobj; int * cls; } ;
struct memory_block {TYPE_1__ sysdev; } ;


 int BUG_ON (int) ;
 int kobject_put (int *) ;
 int memory_sysdev_class ;
 int sysdev_unregister (TYPE_1__*) ;

__attribute__((used)) static void
unregister_memory(struct memory_block *memory)
{
 BUG_ON(memory->sysdev.cls != &memory_sysdev_class);


 kobject_put(&memory->sysdev.kobj);
 sysdev_unregister(&memory->sysdev);
}
