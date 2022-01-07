
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct TYPE_4__ {scalar_t__ ao_bipolar; } ;
struct TYPE_3__ {int ao_bits; } ;


 TYPE_2__* devpriv ;
 TYPE_1__* thisboard ;

__attribute__((used)) static inline unsigned short pci230_ao_mangle_datum(struct comedi_device *dev,
          short datum)
{


 if (devpriv->ao_bipolar) {
  datum ^= 1 << (thisboard->ao_bits - 1);
 }




 datum <<= (16 - thisboard->ao_bits);
 return (unsigned short)datum;
}
