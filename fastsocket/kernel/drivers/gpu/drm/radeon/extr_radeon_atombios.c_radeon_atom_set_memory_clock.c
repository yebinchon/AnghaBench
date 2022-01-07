
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int atom_context; } ;
struct radeon_device {int flags; TYPE_1__ mode_info; } ;
struct TYPE_4__ {int ulTargetMemoryClock; } ;
typedef TYPE_2__ SET_MEMORY_CLOCK_PS_ALLOCATION ;


 int COMMAND ;
 int GetIndexIntoMasterTable (int ,int ) ;
 int RADEON_IS_IGP ;
 int SetMemoryClock ;
 int atom_execute_table (int ,int,int *) ;
 int cpu_to_le32 (int ) ;

void radeon_atom_set_memory_clock(struct radeon_device *rdev,
      uint32_t mem_clock)
{
 SET_MEMORY_CLOCK_PS_ALLOCATION args;
 int index = GetIndexIntoMasterTable(COMMAND, SetMemoryClock);

 if (rdev->flags & RADEON_IS_IGP)
  return;

 args.ulTargetMemoryClock = cpu_to_le32(mem_clock);

 atom_execute_table(rdev->mode_info.atom_context, index, (uint32_t *)&args);
}
