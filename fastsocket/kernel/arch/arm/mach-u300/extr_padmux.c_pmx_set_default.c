
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_7__ {TYPE_1__* onmask; int default_on; } ;
struct TYPE_6__ {int mask; } ;


 int ARRAY_SIZE (TYPE_2__**) ;
 int BUG () ;
 int EUSERS ;
 int memset (int*,int ,int) ;
 TYPE_2__** pmx_registers ;
 TYPE_2__** pmx_settings ;
 int update_registers (TYPE_2__*,int) ;

__attribute__((used)) static int pmx_set_default(void)
{

 u16 modbits[ARRAY_SIZE(pmx_registers)];

 int i, j;

 memset(modbits, 0, ARRAY_SIZE(pmx_registers) * sizeof(u16));

 for (i = 0; i < ARRAY_SIZE(pmx_settings); i++) {

  if (!pmx_settings[i]->default_on)
   continue;

  for (j = 0; j < ARRAY_SIZE(pmx_registers); j++) {


   if (modbits[j] & pmx_settings[i]->onmask[j].mask) {
    BUG();
    return -EUSERS;
   }
   modbits[j] |= pmx_settings[i]->onmask[j].mask;
  }
  update_registers(pmx_settings[i], 1);
 }
 return 0;
}
