
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct pmx {TYPE_1__* onmask; } ;
struct TYPE_2__ {int mask; int val; } ;


 int ARRAY_SIZE (int *) ;
 int * pmx_registers ;
 int readw (int ) ;
 int writew (int ,int ) ;

__attribute__((used)) static void update_registers(struct pmx *pmx, bool activate)
{
 u16 regval, val, mask;
 int i;

 for (i = 0; i < ARRAY_SIZE(pmx_registers); i++) {
  if (activate)
   val = pmx->onmask[i].val;
  else
   val = 0;

  mask = pmx->onmask[i].mask;
  if (mask != 0) {
   regval = readw(pmx_registers[i]);
   regval &= ~mask;
   regval |= val;
   writew(regval, pmx_registers[i]);
  }
 }
}
