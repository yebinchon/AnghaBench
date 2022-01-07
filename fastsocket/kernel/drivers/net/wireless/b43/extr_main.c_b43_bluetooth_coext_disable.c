
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_wldev {int dummy; } ;


 int modparam_btcoex ;

__attribute__((used)) static void b43_bluetooth_coext_disable(struct b43_wldev *dev)
{
 if (!modparam_btcoex)
  return;

}
