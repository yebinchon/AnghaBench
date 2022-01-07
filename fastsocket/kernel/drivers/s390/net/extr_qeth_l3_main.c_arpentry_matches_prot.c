
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_arp_entrytype {scalar_t__ ip; } ;
typedef scalar_t__ __u16 ;


 scalar_t__ QETHARP_IP_ADDR_V4 ;
 scalar_t__ QETHARP_IP_ADDR_V6 ;
 scalar_t__ QETH_PROT_IPV4 ;
 scalar_t__ QETH_PROT_IPV6 ;

__attribute__((used)) static int arpentry_matches_prot(struct qeth_arp_entrytype *type, __u16 prot)
{
 return (type->ip == QETHARP_IP_ADDR_V4 && prot == QETH_PROT_IPV4) ||
  (type->ip == QETHARP_IP_ADDR_V6 && prot == QETH_PROT_IPV6);
}
