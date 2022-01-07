
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ACPI_VIDEO_CLASS ;
 int acpi_bus_unregister_driver (int *) ;
 int acpi_root_dir ;
 int acpi_video_bus ;
 scalar_t__ register_count ;
 int remove_proc_entry (int ,int ) ;

void acpi_video_unregister(void)
{
 if (!register_count) {




  return;
 }
 acpi_bus_unregister_driver(&acpi_video_bus);

 remove_proc_entry(ACPI_VIDEO_CLASS, acpi_root_dir);

 register_count = 0;

 return;
}
