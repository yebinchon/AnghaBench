
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nvm; scalar_t__ vram_base_offset; } ;
struct radeon_device {TYPE_1__ vm_manager; } ;



int si_vm_init(struct radeon_device *rdev)
{

 rdev->vm_manager.nvm = 16;

 rdev->vm_manager.vram_base_offset = 0;

 return 0;
}
