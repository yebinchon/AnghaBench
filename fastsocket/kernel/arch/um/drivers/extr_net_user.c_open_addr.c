
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int change (void*,char*,unsigned char*,unsigned char*) ;

void open_addr(unsigned char *addr, unsigned char *netmask, void *arg)
{
 change(arg, "add", addr, netmask);
}
