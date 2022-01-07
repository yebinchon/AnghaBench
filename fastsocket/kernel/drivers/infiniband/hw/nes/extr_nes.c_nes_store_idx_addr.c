
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int dummy; } ;
typedef int ssize_t ;


 int simple_strtoul (char*,char**,int) ;
 int strnlen (char const*,size_t) ;
 int sysfs_idx_addr ;

__attribute__((used)) static ssize_t nes_store_idx_addr(struct device_driver *ddp,
 const char *buf, size_t count)
{
 char *p = (char *)buf;

 if (p[1] == 'x' || p[1] == 'X' || p[0] == 'x' || p[0] == 'X')
  sysfs_idx_addr = simple_strtoul(p, &p, 16);

 return strnlen(buf, count);
}
