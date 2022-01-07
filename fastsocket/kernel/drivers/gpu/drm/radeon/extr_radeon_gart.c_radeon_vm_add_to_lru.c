
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct radeon_vm {int list; } ;
struct TYPE_2__ {int lru_vm; } ;
struct radeon_device {TYPE_1__ vm_manager; } ;


 int list_add_tail (int *,int *) ;
 int list_del_init (int *) ;

void radeon_vm_add_to_lru(struct radeon_device *rdev, struct radeon_vm *vm)
{
 list_del_init(&vm->list);
 list_add_tail(&vm->list, &rdev->vm_manager.lru_vm);
}
