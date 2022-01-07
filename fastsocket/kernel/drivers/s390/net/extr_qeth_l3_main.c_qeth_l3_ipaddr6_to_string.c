
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u8 ;


 int sprintf (char*,char*,int const,int const,int const,int const,int const,int const,int const,int const,int const,int const,int const,int const,int const,int const,int const,int const) ;

void qeth_l3_ipaddr6_to_string(const __u8 *addr, char *buf)
{
 sprintf(buf, "%02x%02x:%02x%02x:%02x%02x:%02x%02x"
       ":%02x%02x:%02x%02x:%02x%02x:%02x%02x",
       addr[0], addr[1], addr[2], addr[3],
       addr[4], addr[5], addr[6], addr[7],
       addr[8], addr[9], addr[10], addr[11],
       addr[12], addr[13], addr[14], addr[15]);
}
