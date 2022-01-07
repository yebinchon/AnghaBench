
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int etrax_ethernet_init () ;

__attribute__((used)) static int
etrax_init_module(void)
{
 return etrax_ethernet_init();
}
