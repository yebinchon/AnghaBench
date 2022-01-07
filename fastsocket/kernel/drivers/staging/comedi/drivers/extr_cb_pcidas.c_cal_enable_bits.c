
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct TYPE_2__ {int calibration_source; } ;


 unsigned int CAL_EN_BIT ;
 unsigned int CAL_SRC_BITS (int ) ;
 TYPE_1__* devpriv ;

__attribute__((used)) static inline unsigned int cal_enable_bits(struct comedi_device *dev)
{
 return CAL_EN_BIT | CAL_SRC_BITS(devpriv->calibration_source);
}
