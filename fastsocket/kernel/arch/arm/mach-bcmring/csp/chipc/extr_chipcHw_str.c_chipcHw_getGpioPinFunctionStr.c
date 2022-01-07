
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int chipcHw_GPIO_COUNT ;
 size_t chipcHw_getGpioPinFunction (int) ;
 char const** gMuxStr ;

const char *chipcHw_getGpioPinFunctionStr(int pin)
{
 if ((pin < 0) || (pin >= chipcHw_GPIO_COUNT)) {
  return "";
 }

 return gMuxStr[chipcHw_getGpioPinFunction(pin)];
}
