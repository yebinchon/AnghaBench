
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int atom_context; } ;
struct radeon_device {TYPE_1__ mode_info; } ;
struct TYPE_4__ {int ucEnable; } ;
typedef TYPE_2__ DYNAMIC_CLOCK_GATING_PS_ALLOCATION ;


 int COMMAND ;
 int DynamicClockGating ;
 int GetIndexIntoMasterTable (int ,int ) ;
 int atom_execute_table (int ,int,int *) ;

void radeon_atom_set_clock_gating(struct radeon_device *rdev, int enable)
{
 DYNAMIC_CLOCK_GATING_PS_ALLOCATION args;
 int index = GetIndexIntoMasterTable(COMMAND, DynamicClockGating);

 args.ucEnable = enable;

 atom_execute_table(rdev->mode_info.atom_context, index, (uint32_t *)&args);
}
