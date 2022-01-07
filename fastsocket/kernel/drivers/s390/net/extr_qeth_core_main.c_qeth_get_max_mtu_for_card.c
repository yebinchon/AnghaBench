
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int qeth_get_max_mtu_for_card(int cardtype)
{
 switch (cardtype) {

 case 128:
 case 132:
 case 130:
 case 131:
 case 129:
  return 61440;
 case 133:
  return 57344;
 default:
  return 1500;
 }
}
