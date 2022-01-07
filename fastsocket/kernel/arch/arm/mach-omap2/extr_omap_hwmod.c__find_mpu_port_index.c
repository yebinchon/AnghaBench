
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_hwmod_ocp_if {int user; } ;
struct omap_hwmod {int slaves_cnt; int name; struct omap_hwmod_ocp_if** slaves; } ;


 int EINVAL ;
 int OCP_USER_MPU ;
 int pr_debug (char*,int ,...) ;

__attribute__((used)) static int _find_mpu_port_index(struct omap_hwmod *oh)
{
 struct omap_hwmod_ocp_if *os;
 int i;
 int found = 0;

 if (!oh || oh->slaves_cnt == 0)
  return -EINVAL;

 for (i = 0, os = *oh->slaves; i < oh->slaves_cnt; i++, os++) {
  if (os->user & OCP_USER_MPU) {
   found = 1;
   break;
  }
 }

 if (found)
  pr_debug("omap_hwmod: %s: MPU OCP slave port ID  %d\n",
    oh->name, i);
 else
  pr_debug("omap_hwmod: %s: no MPU OCP slave port found\n",
    oh->name);

 return (found) ? i : -EINVAL;
}
