
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int dummy; } ;
typedef int ssize_t ;


 int ee_flsh_adapter ;
 int simple_strtoul (char*,char**,int) ;
 int strnlen (char const*,size_t) ;

__attribute__((used)) static ssize_t nes_store_adapter(struct device_driver *ddp,
 const char *buf, size_t count)
{
 char *p = (char *)buf;

 ee_flsh_adapter = simple_strtoul(p, &p, 10);
 return strnlen(buf, count);
}
