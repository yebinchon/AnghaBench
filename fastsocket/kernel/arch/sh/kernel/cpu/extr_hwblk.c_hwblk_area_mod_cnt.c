
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hwblk_info {struct hwblk_area* areas; } ;
struct hwblk_area {int* cnt; int flags; int parent; } ;


 int HWBLK_AREA_FLAG_PARENT ;

__attribute__((used)) static void hwblk_area_mod_cnt(struct hwblk_info *info,
          int area, int counter, int value, int goal)
{
 struct hwblk_area *hap = info->areas + area;

 hap->cnt[counter] += value;

 if (hap->cnt[counter] != goal)
  return;

 if (hap->flags & HWBLK_AREA_FLAG_PARENT)
  hwblk_area_mod_cnt(info, hap->parent, counter, value, goal);
}
