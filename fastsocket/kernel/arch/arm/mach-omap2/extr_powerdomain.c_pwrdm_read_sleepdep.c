
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct powerdomain {int dep_bit; int prcm_offs; int name; int sleepdep_srcs; } ;


 int EINVAL ;
 int IS_ERR (struct powerdomain*) ;
 int OMAP3430_CM_SLEEPDEP ;
 struct powerdomain* _pwrdm_deps_lookup (struct powerdomain*,int ) ;
 int cpu_is_omap34xx () ;
 int pr_debug (char*,int ,int ) ;
 int prm_read_mod_bits_shift (int ,int ,int) ;

int pwrdm_read_sleepdep(struct powerdomain *pwrdm1, struct powerdomain *pwrdm2)
{
 struct powerdomain *p;

 if (!pwrdm1)
  return -EINVAL;

 if (!cpu_is_omap34xx())
  return -EINVAL;

 p = _pwrdm_deps_lookup(pwrdm2, pwrdm1->sleepdep_srcs);
 if (IS_ERR(p)) {
  pr_debug("powerdomain: hardware cannot set/clear sleep "
    "dependency affecting %s from %s\n", pwrdm1->name,
    pwrdm2->name);
  return IS_ERR(p);
 }

 return prm_read_mod_bits_shift(pwrdm1->prcm_offs, OMAP3430_CM_SLEEPDEP,
     (1 << pwrdm2->dep_bit));
}
