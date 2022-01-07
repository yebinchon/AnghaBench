
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ethertap_data {int control_fd; int gate_addr; } ;


 int etap_open_addr (unsigned char*,unsigned char*,int*) ;
 int tap_check_ips (int ,unsigned char*) ;

__attribute__((used)) static void etap_add_addr(unsigned char *addr, unsigned char *netmask,
     void *data)
{
 struct ethertap_data *pri = data;

 tap_check_ips(pri->gate_addr, addr);
 if (pri->control_fd == -1)
  return;
 etap_open_addr(addr, netmask, &pri->control_fd);
}
