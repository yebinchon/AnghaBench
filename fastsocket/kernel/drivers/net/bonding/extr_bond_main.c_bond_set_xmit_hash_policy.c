
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int xmit_policy; } ;
struct bonding {int xmit_hash_policy; TYPE_1__ params; } ;





 int bond_xmit_hash_policy_l2 ;
 int bond_xmit_hash_policy_l23 ;
 int bond_xmit_hash_policy_l34 ;

__attribute__((used)) static void bond_set_xmit_hash_policy(struct bonding *bond)
{
 switch (bond->params.xmit_policy) {
 case 129:
  bond->xmit_hash_policy = bond_xmit_hash_policy_l23;
  break;
 case 128:
  bond->xmit_hash_policy = bond_xmit_hash_policy_l34;
  break;
 case 130:
 default:
  bond->xmit_hash_policy = bond_xmit_hash_policy_l2;
  break;
 }
}
