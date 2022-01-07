
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slip_data {scalar_t__ slave; int name; } ;


 int close_addr (unsigned char*,unsigned char*,int ) ;

__attribute__((used)) static void slip_del_addr(unsigned char *addr, unsigned char *netmask,
       void *data)
{
 struct slip_data *pri = data;

 if (pri->slave < 0)
  return;
 close_addr(addr, netmask, pri->name);
}
