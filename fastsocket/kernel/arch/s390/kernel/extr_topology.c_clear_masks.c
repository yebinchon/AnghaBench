
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mask_info {struct mask_info* next; int mask; } ;


 struct mask_info book_info ;
 struct mask_info core_info ;
 int cpus_clear (int ) ;

__attribute__((used)) static void clear_masks(void)
{
 struct mask_info *info;

 info = &core_info;
 while (info) {
  cpus_clear(info->mask);
  info = info->next;
 }







}
