
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct ch7006_state {int dummy; } ;


 int CH7006_BCLKOUT ;
 int CH7006_BLACK_LEVEL ;
 int CH7006_BWIDTH ;
 int CH7006_CALC_SUBC_INC0 ;
 int CH7006_CLKMODE ;
 int CH7006_CONTRAST ;
 int CH7006_DETECT ;
 int CH7006_DISPMODE ;
 int CH7006_FFILTER ;
 int CH7006_HPOS ;
 int CH7006_INPUT_FORMAT ;
 int CH7006_INPUT_SYNC ;
 int CH7006_PLLM ;
 int CH7006_PLLN ;
 int CH7006_PLLOV ;
 int CH7006_PLL_CONTROL ;
 int CH7006_POV ;
 int CH7006_POWER ;
 int CH7006_START_ACTIVE ;
 int CH7006_SUBC_INC0 ;
 int CH7006_SUBC_INC1 ;
 int CH7006_SUBC_INC2 ;
 int CH7006_SUBC_INC3 ;
 int CH7006_SUBC_INC4 ;
 int CH7006_SUBC_INC5 ;
 int CH7006_SUBC_INC6 ;
 int CH7006_SUBC_INC7 ;
 int CH7006_VPOS ;
 int ch7006_load_reg (struct i2c_client*,struct ch7006_state*,int ) ;

void ch7006_state_load(struct i2c_client *client,
         struct ch7006_state *state)
{
 ch7006_load_reg(client, state, CH7006_POWER);

 ch7006_load_reg(client, state, CH7006_DISPMODE);
 ch7006_load_reg(client, state, CH7006_FFILTER);
 ch7006_load_reg(client, state, CH7006_BWIDTH);
 ch7006_load_reg(client, state, CH7006_INPUT_FORMAT);
 ch7006_load_reg(client, state, CH7006_CLKMODE);
 ch7006_load_reg(client, state, CH7006_START_ACTIVE);
 ch7006_load_reg(client, state, CH7006_POV);
 ch7006_load_reg(client, state, CH7006_BLACK_LEVEL);
 ch7006_load_reg(client, state, CH7006_HPOS);
 ch7006_load_reg(client, state, CH7006_VPOS);
 ch7006_load_reg(client, state, CH7006_INPUT_SYNC);
 ch7006_load_reg(client, state, CH7006_DETECT);
 ch7006_load_reg(client, state, CH7006_CONTRAST);
 ch7006_load_reg(client, state, CH7006_PLLOV);
 ch7006_load_reg(client, state, CH7006_PLLM);
 ch7006_load_reg(client, state, CH7006_PLLN);
 ch7006_load_reg(client, state, CH7006_BCLKOUT);
 ch7006_load_reg(client, state, CH7006_SUBC_INC0);
 ch7006_load_reg(client, state, CH7006_SUBC_INC1);
 ch7006_load_reg(client, state, CH7006_SUBC_INC2);
 ch7006_load_reg(client, state, CH7006_SUBC_INC3);
 ch7006_load_reg(client, state, CH7006_SUBC_INC4);
 ch7006_load_reg(client, state, CH7006_SUBC_INC5);
 ch7006_load_reg(client, state, CH7006_SUBC_INC6);
 ch7006_load_reg(client, state, CH7006_SUBC_INC7);
 ch7006_load_reg(client, state, CH7006_PLL_CONTROL);
 ch7006_load_reg(client, state, CH7006_CALC_SUBC_INC0);
}
