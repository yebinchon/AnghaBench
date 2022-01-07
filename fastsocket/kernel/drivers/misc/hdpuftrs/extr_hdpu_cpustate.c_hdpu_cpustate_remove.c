
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct TYPE_2__ {int * clr_addr; int * set_addr; } ;


 TYPE_1__ cpustate ;
 int cpustate_dev ;
 int misc_deregister (int *) ;
 int remove_proc_entry (char*,int *) ;

__attribute__((used)) static int hdpu_cpustate_remove(struct platform_device *pdev)
{
 cpustate.set_addr = ((void*)0);
 cpustate.clr_addr = ((void*)0);

 remove_proc_entry("sky_cpustate", ((void*)0));
 misc_deregister(&cpustate_dev);

 return 0;
}
