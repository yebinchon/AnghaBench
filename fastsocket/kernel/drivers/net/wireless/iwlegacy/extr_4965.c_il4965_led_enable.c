
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct il_priv {int dummy; } ;


 int CSR_LED_REG ;
 int CSR_LED_REG_TRUN_ON ;
 int _il_wr (struct il_priv*,int ,int ) ;

void
il4965_led_enable(struct il_priv *il)
{
 _il_wr(il, CSR_LED_REG, CSR_LED_REG_TRUN_ON);
}
