
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_child_t {int total_chnls; int * mon_type; int voltage_mask; TYPE_1__* chnl_array; } ;
struct TYPE_2__ {scalar_t__ type; } ;


 int ENVCTRL_GLOBALADDR_MON ;
 scalar_t__ PCF8584_VOLTAGE_TYPE ;
 int * chnls_mask ;

__attribute__((used)) static void envctrl_init_globaladdr(struct i2c_child_t *pchild)
{
 int i;
 for (i = 0; i < pchild->total_chnls; i++) {
  if (PCF8584_VOLTAGE_TYPE == pchild->chnl_array[i].type) {
   pchild->voltage_mask |= chnls_mask[i];
  }
 }





 pchild->mon_type[0] = ENVCTRL_GLOBALADDR_MON;
}
