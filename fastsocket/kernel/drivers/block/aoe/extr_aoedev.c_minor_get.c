
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong ;


 scalar_t__ aoe_dyndevs ;
 int minor_get_dyn (int *) ;
 int minor_get_static (int *,int ,int) ;

__attribute__((used)) static int
minor_get(ulong *sysminor, ulong aoemaj, int aoemin)
{
 if (aoe_dyndevs)
  return minor_get_dyn(sysminor);
 else
  return minor_get_static(sysminor, aoemaj, aoemin);
}
