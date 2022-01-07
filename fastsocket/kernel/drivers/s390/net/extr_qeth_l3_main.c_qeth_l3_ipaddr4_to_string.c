
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u8 ;


 int sprintf (char*,char*,int const,int const,int const,int const) ;

void qeth_l3_ipaddr4_to_string(const __u8 *addr, char *buf)
{
 sprintf(buf, "%i.%i.%i.%i", addr[0], addr[1], addr[2], addr[3]);
}
