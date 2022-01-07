
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_therm {int dummy; } ;


 int nv_rd32 (struct nouveau_therm*,int) ;

int
nv50_temp_get(struct nouveau_therm *therm)
{
 return nv_rd32(therm, 0x20400);
}
