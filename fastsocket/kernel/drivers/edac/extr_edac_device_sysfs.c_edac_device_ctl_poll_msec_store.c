
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edac_device_ctl_info {int dummy; } ;
typedef size_t ssize_t ;


 int edac_device_reset_delay_period (struct edac_device_ctl_info*,unsigned long) ;
 unsigned long simple_strtoul (char const*,int *,int ) ;

__attribute__((used)) static ssize_t edac_device_ctl_poll_msec_store(struct edac_device_ctl_info
     *ctl_info, const char *data,
     size_t count)
{
 unsigned long value;






 value = simple_strtoul(data, ((void*)0), 0);
 edac_device_reset_delay_period(ctl_info, value);

 return count;
}
