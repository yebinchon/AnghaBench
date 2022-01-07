
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ec_creg_mask_parms {unsigned long* andvals; unsigned long* orvals; } ;


 int __ctl_load (unsigned long*,int ,int) ;
 int __ctl_store (unsigned long*,int ,int) ;

__attribute__((used)) static void smp_ctl_bit_callback(void *info)
{
 struct ec_creg_mask_parms *pp = info;
 unsigned long cregs[16];
 int i;

 __ctl_store(cregs, 0, 15);
 for (i = 0; i <= 15; i++)
  cregs[i] = (cregs[i] & pp->andvals[i]) | pp->orvals[i];
 __ctl_load(cregs, 0, 15);
}
