
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unw_frame_info {int dummy; } ;
typedef int buf ;


 int print_symbol (char*,unsigned long) ;
 int printk (char*) ;
 int snprintf (char*,int,char*,unsigned long,unsigned long,unsigned long) ;
 int unw_get_bsp (struct unw_frame_info*,unsigned long*) ;
 int unw_get_ip (struct unw_frame_info*,unsigned long*) ;
 int unw_get_sp (struct unw_frame_info*,unsigned long*) ;
 scalar_t__ unw_unwind (struct unw_frame_info*) ;

void
ia64_do_show_stack (struct unw_frame_info *info, void *arg)
{
 unsigned long ip, sp, bsp;
 char buf[128];

 printk("\nCall Trace:\n");
 do {
  unw_get_ip(info, &ip);
  if (ip == 0)
   break;

  unw_get_sp(info, &sp);
  unw_get_bsp(info, &bsp);
  snprintf(buf, sizeof(buf),
    " [<%016lx>] %%s\n"
    "                                sp=%016lx bsp=%016lx\n",
    ip, sp, bsp);
  print_symbol(buf, ip);
 } while (unw_unwind(info) >= 0);
}
