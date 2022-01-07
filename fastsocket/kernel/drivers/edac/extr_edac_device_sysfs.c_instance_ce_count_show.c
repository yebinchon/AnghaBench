
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ce_count; } ;
struct edac_device_instance {TYPE_1__ counters; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t instance_ce_count_show(struct edac_device_instance *instance,
    char *data)
{
 return sprintf(data, "%u\n", instance->counters.ce_count);
}
