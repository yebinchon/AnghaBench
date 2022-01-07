
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct omap_hwmod {TYPE_1__* sysconfig; } ;
struct TYPE_2__ {int sysc_flags; } ;


 int EINVAL ;
 int SYSC_HAS_SOFTRESET ;
 int SYSC_SOFTRESET_MASK ;

__attribute__((used)) static int _set_softreset(struct omap_hwmod *oh, u32 *v)
{
 if (!oh->sysconfig ||
     !(oh->sysconfig->sysc_flags & SYSC_HAS_SOFTRESET))
  return -EINVAL;

 *v |= SYSC_SOFTRESET_MASK;

 return 0;
}
