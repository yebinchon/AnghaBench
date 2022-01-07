
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int chassis_id ;
 scalar_t__ hdpu_chassis_id ;
 scalar_t__ hdpu_slot_id ;
 int remove_proc_entry (char*,int *) ;
 int slot_id ;

__attribute__((used)) static int hdpu_nexus_remove(struct platform_device *pdev)
{
 slot_id = -1;
 chassis_id = -1;

 remove_proc_entry("sky_slot_id", ((void*)0));
 remove_proc_entry("sky_chassis_id", ((void*)0));

 hdpu_slot_id = 0;
 hdpu_chassis_id = 0;

 return 0;
}
