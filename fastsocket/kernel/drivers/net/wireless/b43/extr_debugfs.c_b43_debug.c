
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct b43_wldev {TYPE_1__* dfsentry; } ;
typedef enum b43_dyndbg { ____Placeholder_b43_dyndbg } b43_dyndbg ;
struct TYPE_2__ {scalar_t__* dyn_debug; } ;


 int B43_VERBOSITY_MAX ;
 int b43_modparam_verbose ;
 scalar_t__ unlikely (int) ;

bool b43_debug(struct b43_wldev *dev, enum b43_dyndbg feature)
{
 bool enabled;

 enabled = (dev->dfsentry && dev->dfsentry->dyn_debug[feature]);
 if (unlikely(enabled)) {


  b43_modparam_verbose = B43_VERBOSITY_MAX;
 }

 return enabled;
}
