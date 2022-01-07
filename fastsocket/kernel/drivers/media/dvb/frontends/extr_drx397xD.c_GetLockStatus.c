
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int d60; } ;
struct drx397xD_state {TYPE_1__ config; } ;


 int RD16 (struct drx397xD_state*,int) ;

__attribute__((used)) static int GetLockStatus(struct drx397xD_state *s, int *lockstat)
{
 int rc;

 *lockstat = 0;

 rc = RD16(s, 0x082004b);
 if (rc < 0)
  return rc;

 if (s->config.d60 != 2)
  return 0;

 if ((rc & 7) == 7)
  *lockstat |= 1;
 if ((rc & 3) == 3)
  *lockstat |= 2;
 if (rc & 1)
  *lockstat |= 4;
 return 0;
}
