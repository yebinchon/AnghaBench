
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {int resolution; } ;


 TYPE_1__* thisboard ;

__attribute__((used)) static inline uint16_t munge_bipolar_sample(const struct comedi_device *dev,
         uint16_t sample)
{
 sample += 1 << (thisboard->resolution - 1);
 return sample;
}
