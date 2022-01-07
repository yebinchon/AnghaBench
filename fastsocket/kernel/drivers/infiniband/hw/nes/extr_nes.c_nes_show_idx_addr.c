
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int snprintf (char*,int ,char*,int) ;
 int sysfs_idx_addr ;

__attribute__((used)) static ssize_t nes_show_idx_addr(struct device_driver *ddp, char *buf)
{
 return snprintf(buf, PAGE_SIZE, "0x%x\n", sysfs_idx_addr);
}
