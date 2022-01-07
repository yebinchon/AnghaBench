
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rlb_enabled; } ;
struct bonding {TYPE_1__ alb_info; } ;


 int rlb_initialize (struct bonding*) ;
 int tlb_deinitialize (struct bonding*) ;
 int tlb_initialize (struct bonding*) ;

int bond_alb_initialize(struct bonding *bond, int rlb_enabled)
{
 int res;

 res = tlb_initialize(bond);
 if (res) {
  return res;
 }

 if (rlb_enabled) {
  bond->alb_info.rlb_enabled = 1;

  res = rlb_initialize(bond);
  if (res) {
   tlb_deinitialize(bond);
   return res;
  }
 } else {
  bond->alb_info.rlb_enabled = 0;
 }

 return 0;
}
