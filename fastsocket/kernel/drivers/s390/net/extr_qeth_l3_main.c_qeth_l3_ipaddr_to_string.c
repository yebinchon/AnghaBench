
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum qeth_prot_versions { ____Placeholder_qeth_prot_versions } qeth_prot_versions ;
typedef int __u8 ;


 int QETH_PROT_IPV4 ;
 int QETH_PROT_IPV6 ;
 int qeth_l3_ipaddr4_to_string (int const*,char*) ;
 int qeth_l3_ipaddr6_to_string (int const*,char*) ;

void qeth_l3_ipaddr_to_string(enum qeth_prot_versions proto, const __u8 *addr,
    char *buf)
{
 if (proto == QETH_PROT_IPV4)
  qeth_l3_ipaddr4_to_string(addr, buf);
 else if (proto == QETH_PROT_IPV6)
  qeth_l3_ipaddr6_to_string(addr, buf);
}
