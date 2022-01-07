
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int dummy; } ;
typedef int ssize_t ;


 int megasas_dbg_lvl ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t
megasas_sysfs_show_dbg_lvl(struct device_driver *dd, char *buf)
{
 return sprintf(buf, "%u\n", megasas_dbg_lvl);
}
