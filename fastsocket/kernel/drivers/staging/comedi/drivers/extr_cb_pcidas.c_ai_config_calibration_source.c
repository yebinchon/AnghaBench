
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct TYPE_2__ {unsigned int calibration_source; } ;


 int EINVAL ;
 TYPE_1__* devpriv ;
 int printk (char*,unsigned int) ;

__attribute__((used)) static int ai_config_calibration_source(struct comedi_device *dev,
     unsigned int *data)
{
 static const int num_calibration_sources = 8;
 unsigned int source = data[1];

 if (source >= num_calibration_sources) {
  printk("invalid calibration source: %i\n", source);
  return -EINVAL;
 }

 devpriv->calibration_source = source;

 return 2;
}
