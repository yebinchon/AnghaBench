
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tuntap_data {int fd; int dev_name; scalar_t__ fixed_config; int gate_addr; } ;


 int open_addr (unsigned char*,unsigned char*,int ) ;
 int tap_check_ips (int ,unsigned char*) ;

__attribute__((used)) static void tuntap_add_addr(unsigned char *addr, unsigned char *netmask,
       void *data)
{
 struct tuntap_data *pri = data;

 tap_check_ips(pri->gate_addr, addr);
 if ((pri->fd == -1) || pri->fixed_config)
  return;
 open_addr(addr, netmask, pri->dev_name);
}
