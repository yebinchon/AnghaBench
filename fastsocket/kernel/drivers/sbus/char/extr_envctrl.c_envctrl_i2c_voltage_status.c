
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_child_t {unsigned char voltage_mask; } ;


 unsigned char ENVCTRL_POWERSUPPLY_BAD ;
 unsigned char ENVCTRL_VOLTAGE_BAD ;
 unsigned char ENVCTRL_VOLTAGE_POWERSUPPLY_BAD ;
 unsigned char ENVCTRL_VOLTAGE_POWERSUPPLY_GOOD ;
 int PCF8584_MAX_CHANNELS ;
 int* chnls_mask ;

__attribute__((used)) static unsigned char envctrl_i2c_voltage_status(struct i2c_child_t *pchild,
      unsigned char data,
      char *bufdata)
{
 unsigned char tmp, ret = 0;
 int i, j = 0;

 tmp = data & pchild->voltage_mask;


 if (tmp == pchild->voltage_mask) {

  ret = ENVCTRL_VOLTAGE_POWERSUPPLY_GOOD;
 } else if (tmp == 0) {

  ret = ENVCTRL_VOLTAGE_POWERSUPPLY_BAD;
 } else {

  for (i = 0; i < PCF8584_MAX_CHANNELS; i++) {
   if (pchild->voltage_mask & chnls_mask[i]) {
    j++;


    if (!(chnls_mask[i] & tmp))
     break;
   }
  }





  if (j == 1)
   ret = ENVCTRL_VOLTAGE_BAD;
  else
   ret = ENVCTRL_POWERSUPPLY_BAD;
 }

 bufdata[0] = ret;
 return 1;
}
