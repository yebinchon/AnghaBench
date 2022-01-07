
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 short IFF_UP ;
 int set_if_flags (char*,short) ;

__attribute__((used)) static int set_if_down(char *ifname, short flags)
{
 return set_if_flags(ifname, flags & ~IFF_UP);
}
