
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct powerdomain {int dep_bit; int prcm_offs; int name; int wkdep_srcs; } ;


 int EINVAL ;
 int IS_ERR (struct powerdomain*) ;
 int PM_WKDEP ;
 struct powerdomain* _pwrdm_deps_lookup (struct powerdomain*,int ) ;
 int pr_debug (char*,int ,int ) ;
 int prm_read_mod_bits_shift (int ,int ,int) ;

int pwrdm_read_wkdep(struct powerdomain *pwrdm1, struct powerdomain *pwrdm2)
{
 struct powerdomain *p;

 if (!pwrdm1)
  return -EINVAL;

 p = _pwrdm_deps_lookup(pwrdm2, pwrdm1->wkdep_srcs);
 if (IS_ERR(p)) {
  pr_debug("powerdomain: hardware cannot set/clear wake up of "
    "%s when %s wakes up\n", pwrdm1->name, pwrdm2->name);
  return IS_ERR(p);
 }

 return prm_read_mod_bits_shift(pwrdm1->prcm_offs, PM_WKDEP,
     (1 << pwrdm2->dep_bit));
}
