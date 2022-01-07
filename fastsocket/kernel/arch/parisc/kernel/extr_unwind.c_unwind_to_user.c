
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unwind_frame_info {int ip; } ;


 int unwind_once (struct unwind_frame_info*) ;

int unwind_to_user(struct unwind_frame_info *info)
{
 int ret;

 do {
  ret = unwind_once(info);
 } while (!ret && !(info->ip & 3));

 return ret;
}
