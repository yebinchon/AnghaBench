
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* atom_card_info; TYPE_2__* atom_context; } ;
struct radeon_device {TYPE_1__ mode_info; } ;
struct TYPE_4__ {struct TYPE_4__* scratch; } ;


 int kfree (TYPE_2__*) ;

void radeon_atombios_fini(struct radeon_device *rdev)
{
 if (rdev->mode_info.atom_context) {
  kfree(rdev->mode_info.atom_context->scratch);
 }
 kfree(rdev->mode_info.atom_context);
 rdev->mode_info.atom_context = ((void*)0);
 kfree(rdev->mode_info.atom_card_info);
 rdev->mode_info.atom_card_info = ((void*)0);
}
