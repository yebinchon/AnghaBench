
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_child_t {int dummy; } ;
struct TYPE_2__ {unsigned char* mon_type; } ;


 int ENVCTRL_MAX_CPU ;
 int PCF8584_MAX_CHANNELS ;
 TYPE_1__* i2c_childlist ;

__attribute__((used)) static struct i2c_child_t *envctrl_get_i2c_child(unsigned char mon_type)
{
 int i, j;

 for (i = 0; i < ENVCTRL_MAX_CPU*2; i++) {
  for (j = 0; j < PCF8584_MAX_CHANNELS; j++) {
   if (i2c_childlist[i].mon_type[j] == mon_type) {
    return (struct i2c_child_t *)(&(i2c_childlist[i]));
   }
  }
 }
 return ((void*)0);
}
