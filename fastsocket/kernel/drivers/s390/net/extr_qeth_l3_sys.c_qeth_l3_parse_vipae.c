
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef enum qeth_prot_versions { ____Placeholder_qeth_prot_versions } qeth_prot_versions ;


 int EINVAL ;
 scalar_t__ qeth_l3_string_to_ipaddr (char const*,int,int *) ;

__attribute__((used)) static int qeth_l3_parse_vipae(const char *buf, enum qeth_prot_versions proto,
   u8 *addr)
{
 if (qeth_l3_string_to_ipaddr(buf, proto, addr)) {
  return -EINVAL;
 }
 return 0;
}
