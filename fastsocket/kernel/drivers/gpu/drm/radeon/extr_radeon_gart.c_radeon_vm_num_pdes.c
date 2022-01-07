
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int max_pfn; } ;
struct radeon_device {TYPE_1__ vm_manager; } ;


 int RADEON_VM_BLOCK_SIZE ;

__attribute__((used)) static unsigned radeon_vm_num_pdes(struct radeon_device *rdev)
{
 return rdev->vm_manager.max_pfn >> RADEON_VM_BLOCK_SIZE;
}
