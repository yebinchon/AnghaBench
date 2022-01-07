
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct omap_hwmod {int _int_flags; int _sysc_cache; TYPE_1__* sysconfig; } ;
struct TYPE_2__ {int sysc_flags; } ;


 int EINVAL ;
 int SYSC_ENAWAKEUP_MASK ;
 int SYSC_HAS_ENAWAKEUP ;
 int _HWMOD_WAKEUP_ENABLED ;
 int _write_sysconfig (int ,struct omap_hwmod*) ;

__attribute__((used)) static int _disable_wakeup(struct omap_hwmod *oh)
{
 u32 v;

 if (!oh->sysconfig ||
     !(oh->sysconfig->sysc_flags & SYSC_HAS_ENAWAKEUP))
  return -EINVAL;

 v = oh->_sysc_cache;
 v &= ~SYSC_ENAWAKEUP_MASK;
 _write_sysconfig(v, oh);



 oh->_int_flags &= ~_HWMOD_WAKEUP_ENABLED;

 return 0;
}
