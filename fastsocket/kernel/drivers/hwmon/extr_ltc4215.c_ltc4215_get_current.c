
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ltc4215_data {int* regs; } ;
struct device {int dummy; } ;


 size_t LTC4215_SENSE ;
 struct ltc4215_data* ltc4215_update_device (struct device*) ;

__attribute__((used)) static unsigned int ltc4215_get_current(struct device *dev)
{
 struct ltc4215_data *data = ltc4215_update_device(dev);
 const unsigned int voltage = data->regs[LTC4215_SENSE] * 151;


 const unsigned int curr = voltage / 4;

 return curr;
}
