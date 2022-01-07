
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct powerdomain {int dep_bit; int prcm_offs; int name; int sleepdep_srcs; } ;


 int EINVAL ;
 int IS_ERR (struct powerdomain*) ;
 int OMAP3430_CM_SLEEPDEP ;
 struct powerdomain* _pwrdm_deps_lookup (struct powerdomain*,int ) ;
 int cm_clear_mod_reg_bits (int,int ,int ) ;
 int cpu_is_omap34xx () ;
 int pr_debug (char*,int ,int ) ;

int pwrdm_del_sleepdep(struct powerdomain *pwrdm1, struct powerdomain *pwrdm2)
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

 pr_debug("powerdomain: will no longer prevent %s from sleeping if "
   "%s is active\n", pwrdm1->name, pwrdm2->name);

 cm_clear_mod_reg_bits((1 << pwrdm2->dep_bit),
         pwrdm1->prcm_offs, OMAP3430_CM_SLEEPDEP);

 return 0;
}
