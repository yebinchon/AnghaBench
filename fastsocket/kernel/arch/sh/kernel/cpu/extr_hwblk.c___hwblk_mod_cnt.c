
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hwblk_info {struct hwblk* hwblks; } ;
struct hwblk {int* cnt; int area; } ;


 int hwblk_area_mod_cnt (struct hwblk_info*,int ,int,int,int) ;

__attribute__((used)) static int __hwblk_mod_cnt(struct hwblk_info *info, int hwblk,
     int counter, int value, int goal)
{
 struct hwblk *hp = info->hwblks + hwblk;

 hp->cnt[counter] += value;
 if (hp->cnt[counter] == goal)
  hwblk_area_mod_cnt(info, hp->area, counter, value, goal);

 return hp->cnt[counter];
}
