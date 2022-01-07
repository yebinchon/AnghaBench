
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ write_to_file (char*,char*) ;

__attribute__((used)) static int tune_vm(void)
{
 char *sysctl_names[] = {"/proc/sys/vm/dirty_ratio",
    "/proc/sys/vm/dirty_background_ratio",
    "/proc/sys/vm/dirty_writeback_centisecs",
    "/proc/sys/vm/dirty_expire_centisecs",
    "/proc/sys/vm/vfs_cache_pressure",
    "/proc/sys/vm/lowmem_reserve_ratio",
    ((void*)0)};
 char *sysctl_values[] = {"2", "5", "50", "50", "500", "32", ((void*)0)};
 int i;

 i = 0;
 while (sysctl_names[i]) {
  if (write_to_file(sysctl_names[i], sysctl_values[i]))
   return -1;
  i++;
 }
 return 0;
}
