
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwrdm_dep {struct powerdomain* pwrdm; scalar_t__ pwrdm_name; int omap_chip; } ;
struct powerdomain {int omap_chip; } ;


 int EINVAL ;
 int ENOENT ;
 struct powerdomain* ERR_PTR (int ) ;
 int omap_chip_is (int ) ;
 struct powerdomain* pwrdm_lookup (scalar_t__) ;

__attribute__((used)) static struct powerdomain *_pwrdm_deps_lookup(struct powerdomain *pwrdm,
           struct pwrdm_dep *deps)
{
 struct pwrdm_dep *pd;

 if (!pwrdm || !deps || !omap_chip_is(pwrdm->omap_chip))
  return ERR_PTR(-EINVAL);

 for (pd = deps; pd->pwrdm_name; pd++) {

  if (!omap_chip_is(pd->omap_chip))
   continue;

  if (!pd->pwrdm && pd->pwrdm_name)
   pd->pwrdm = pwrdm_lookup(pd->pwrdm_name);

  if (pd->pwrdm == pwrdm)
   break;

 }

 if (!pd->pwrdm_name)
  return ERR_PTR(-ENOENT);

 return pd->pwrdm;
}
