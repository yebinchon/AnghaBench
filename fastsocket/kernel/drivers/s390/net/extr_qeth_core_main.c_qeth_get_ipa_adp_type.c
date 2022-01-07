
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum qeth_link_types { ____Placeholder_qeth_link_types } qeth_link_types ;
typedef int __u8 ;




__attribute__((used)) static inline __u8 qeth_get_ipa_adp_type(enum qeth_link_types link_type)
{
 switch (link_type) {
 case 128:
  return 2;
 default:
  return 1;
 }
}
