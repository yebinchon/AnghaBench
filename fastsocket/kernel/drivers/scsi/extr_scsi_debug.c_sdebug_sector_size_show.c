
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int scnprintf (char*,int ,char*,int ) ;
 int scsi_debug_sector_size ;

__attribute__((used)) static ssize_t sdebug_sector_size_show(struct device_driver * ddp, char * buf)
{
 return scnprintf(buf, PAGE_SIZE, "%u\n", scsi_debug_sector_size);
}
