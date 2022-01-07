
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_hwmod {int _int_flags; TYPE_1__* sysconfig; int _sysc_cache; int name; } ;
struct TYPE_2__ {int sysc_offs; } ;


 int EINVAL ;
 int WARN (int,char*,int ) ;
 int _HWMOD_SYSCONFIG_LOADED ;
 int omap_hwmod_readl (struct omap_hwmod*,int ) ;

__attribute__((used)) static int _update_sysc_cache(struct omap_hwmod *oh)
{
 if (!oh->sysconfig) {
  WARN(!oh->sysconfig, "omap_hwmod: %s: cannot read "
       "OCP_SYSCONFIG: not defined on hwmod\n", oh->name);
  return -EINVAL;
 }



 oh->_sysc_cache = omap_hwmod_readl(oh, oh->sysconfig->sysc_offs);

 oh->_int_flags |= _HWMOD_SYSCONFIG_LOADED;

 return 0;
}
