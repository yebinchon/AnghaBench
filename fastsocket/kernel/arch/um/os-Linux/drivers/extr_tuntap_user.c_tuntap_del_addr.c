
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tuntap_data {int fd; int dev_name; scalar_t__ fixed_config; } ;


 int close_addr (unsigned char*,unsigned char*,int ) ;

__attribute__((used)) static void tuntap_del_addr(unsigned char *addr, unsigned char *netmask,
       void *data)
{
 struct tuntap_data *pri = data;

 if ((pri->fd == -1) || pri->fixed_config)
  return;
 close_addr(addr, netmask, pri->dev_name);
}
