
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int dummy; } ;


 int A_T3DBG_GPIO_EN ;
 int F_GPIO0_OUT_VAL ;
 int t3_set_reg_field (struct adapter*,int ,int ,int ) ;

void t3_led_ready(struct adapter *adapter)
{
 t3_set_reg_field(adapter, A_T3DBG_GPIO_EN, F_GPIO0_OUT_VAL,
    F_GPIO0_OUT_VAL);
}
