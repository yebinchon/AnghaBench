
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bond_inet6addr_notifier ;
 int register_inet6addr_notifier (int *) ;

void bond_register_ipv6_notifier(void)
{
 register_inet6addr_notifier(&bond_inet6addr_notifier);
}
