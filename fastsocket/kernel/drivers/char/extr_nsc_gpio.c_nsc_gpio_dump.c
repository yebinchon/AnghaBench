
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nsc_gpio_ops {int (* gpio_config ) (unsigned int,int ,int ) ;int (* gpio_current ) (unsigned int) ;int (* gpio_get ) (unsigned int) ;int dev; } ;


 int dev_info (int ,char*,unsigned int,int,char*,char*,char*,char*,char*,char*,char*,int ,int ) ;
 int stub1 (unsigned int,int ,int ) ;
 int stub2 (unsigned int) ;
 int stub3 (unsigned int) ;

void nsc_gpio_dump(struct nsc_gpio_ops *amp, unsigned index)
{

 u32 config = amp->gpio_config(index, ~0, 0);


 dev_info(amp->dev, "io%02u: 0x%04x %s %s %s %s %s %s %s\tio:%d/%d\n",
   index, config,
   (config & 1) ? "OE" : "TS",
   (config & 2) ? "PP" : "OD",
   (config & 4) ? "PUE" : "PUD",
   (config & 8) ? "LOCKED" : "",
   (config & 16) ? "LEVEL" : "EDGE",
   (config & 32) ? "HI" : "LO",
   (config & 64) ? "DEBOUNCE" : "",

   amp->gpio_get(index), amp->gpio_current(index));
}
