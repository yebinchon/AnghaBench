
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vreg {int name; } ;
struct device {int dummy; } ;


 int ARRAY_SIZE (struct vreg*) ;
 int strcmp (int ,char const*) ;
 struct vreg* vregs ;

struct vreg *vreg_get(struct device *dev, const char *id)
{
 int n;
 for (n = 0; n < ARRAY_SIZE(vregs); n++) {
  if (!strcmp(vregs[n].name, id))
   return vregs + n;
 }
 return 0;
}
