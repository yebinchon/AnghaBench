
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u8 ;
typedef int u64 ;
typedef unsigned long u32 ;
struct megasas_instance {int dummy; } ;
struct MR_LD_RAID {int level; } ;
struct MR_FW_RAID_MAP_ALL {int dummy; } ;


 struct MR_LD_RAID* MR_LdRaidGet (unsigned long,struct MR_FW_RAID_MAP_ALL*) ;
 int SPAN_ROW_SIZE (struct MR_FW_RAID_MAP_ALL*,unsigned long,unsigned long) ;
 unsigned long get_arm_from_strip (struct megasas_instance*,unsigned long,int ,struct MR_FW_RAID_MAP_ALL*) ;
 unsigned long mega_mod64 (int ,int ) ;

u8 get_arm(struct megasas_instance *instance, u32 ld, u8 span, u64 stripe,
  struct MR_FW_RAID_MAP_ALL *map)
{
 struct MR_LD_RAID *raid = MR_LdRaidGet(ld, map);

 u32 arm = 0;

 switch (raid->level) {
 case 0:
 case 5:
 case 6:
  arm = mega_mod64(stripe, SPAN_ROW_SIZE(map, ld, span));
  break;
 case 1:

  arm = get_arm_from_strip(instance, ld, stripe, map);
  if (arm != -1UL)
   arm *= 2;
  break;
 }

 return arm;
}
