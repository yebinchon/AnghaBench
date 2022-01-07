
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edac_device_ctl_info {int log_ue; } ;
typedef size_t ssize_t ;


 scalar_t__ simple_strtoul (char const*,int *,int ) ;

__attribute__((used)) static ssize_t edac_device_ctl_log_ue_store(struct edac_device_ctl_info
     *ctl_info, const char *data,
     size_t count)
{

 ctl_info->log_ue = (simple_strtoul(data, ((void*)0), 0) != 0);

 return count;
}
