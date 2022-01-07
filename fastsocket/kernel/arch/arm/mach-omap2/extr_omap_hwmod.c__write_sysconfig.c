
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct omap_hwmod {scalar_t__ _sysc_cache; TYPE_1__* sysconfig; int name; } ;
struct TYPE_2__ {int sysc_offs; } ;


 int WARN (int,char*,int ) ;
 int omap_hwmod_writel (scalar_t__,struct omap_hwmod*,int ) ;

__attribute__((used)) static void _write_sysconfig(u32 v, struct omap_hwmod *oh)
{
 if (!oh->sysconfig) {
  WARN(!oh->sysconfig, "omap_hwmod: %s: cannot write "
       "OCP_SYSCONFIG: not defined on hwmod\n", oh->name);
  return;
 }



 if (oh->_sysc_cache != v) {
  oh->_sysc_cache = v;
  omap_hwmod_writel(v, oh, oh->sysconfig->sysc_offs);
 }
}
