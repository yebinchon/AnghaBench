
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int atom_context; } ;
struct radeon_device {TYPE_1__ mode_info; } ;
struct TYPE_4__ {int ulTargetEngineClock; } ;
typedef TYPE_2__ SET_ENGINE_CLOCK_PS_ALLOCATION ;


 int COMMAND ;
 int GetIndexIntoMasterTable (int ,int ) ;
 int SetEngineClock ;
 int atom_execute_table (int ,int,int *) ;
 int cpu_to_le32 (int ) ;

void radeon_atom_set_engine_clock(struct radeon_device *rdev,
      uint32_t eng_clock)
{
 SET_ENGINE_CLOCK_PS_ALLOCATION args;
 int index = GetIndexIntoMasterTable(COMMAND, SetEngineClock);

 args.ulTargetEngineClock = cpu_to_le32(eng_clock);

 atom_execute_table(rdev->mode_info.atom_context, index, (uint32_t *)&args);
}
