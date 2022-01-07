
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unw_frame_info {int dummy; } ;
struct param_bsp_cfm {unsigned long ip; scalar_t__ cfm; int * bsp; } ;


 int unw_get_bsp (struct unw_frame_info*,unsigned long*) ;
 int unw_get_cfm (struct unw_frame_info*,unsigned long*) ;
 int unw_get_ip (struct unw_frame_info*,unsigned long*) ;
 scalar_t__ unw_unwind (struct unw_frame_info*) ;

__attribute__((used)) static void ia64_get_bsp_cfm(struct unw_frame_info *info, void *arg)
{
 unsigned long ip;
 struct param_bsp_cfm *lp = arg;

 do {
  unw_get_ip(info, &ip);
  if (ip == 0)
   break;
  if (ip == lp->ip) {
   unw_get_bsp(info, (unsigned long*)&lp->bsp);
   unw_get_cfm(info, (unsigned long*)&lp->cfm);
   return;
  }
 } while (unw_unwind(info) >= 0);
 lp->bsp = ((void*)0);
 lp->cfm = 0;
 return;
}
