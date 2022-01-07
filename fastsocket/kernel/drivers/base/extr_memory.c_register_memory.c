
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int id; int * cls; } ;
struct memory_block {TYPE_1__ sysdev; int start_phys_index; } ;


 int memory_sysdev_class ;
 int sysdev_register (TYPE_1__*) ;

__attribute__((used)) static
int register_memory(struct memory_block *memory)
{
 int error;

 memory->sysdev.cls = &memory_sysdev_class;
 memory->sysdev.id = memory->start_phys_index;

 error = sysdev_register(&memory->sysdev);
 return error;
}
