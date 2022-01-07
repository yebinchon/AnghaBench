
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct omap_hwmod {TYPE_1__* sysconfig; } ;
struct TYPE_2__ {int sysc_flags; } ;


 int EINVAL ;
 int SYSC_CLOCKACTIVITY_MASK ;
 int SYSC_CLOCKACTIVITY_SHIFT ;
 int SYSC_HAS_CLOCKACTIVITY ;

__attribute__((used)) static int _set_clockactivity(struct omap_hwmod *oh, u8 clockact, u32 *v)
{
 if (!oh->sysconfig ||
     !(oh->sysconfig->sysc_flags & SYSC_HAS_CLOCKACTIVITY))
  return -EINVAL;

 *v &= ~SYSC_CLOCKACTIVITY_MASK;
 *v |= clockact << SYSC_CLOCKACTIVITY_SHIFT;

 return 0;
}
