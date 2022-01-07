
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int qeth_get_mtu_out_of_mpc(int cardtype)
{
 switch (cardtype) {
 case 128:
  return 1;
 default:
  return 0;
 }
}
