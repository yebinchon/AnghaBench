
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int scnprintf (char*,int ,char*,int ) ;
 int scsi_debug_virtual_gb ;

__attribute__((used)) static ssize_t sdebug_virtual_gb_show(struct device_driver * ddp, char * buf)
{
        return scnprintf(buf, PAGE_SIZE, "%d\n", scsi_debug_virtual_gb);
}
