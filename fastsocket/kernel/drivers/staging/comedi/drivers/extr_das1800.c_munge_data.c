
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct comedi_device {scalar_t__ iobase; } ;


 scalar_t__ DAS1800_CONTROL_C ;
 int UB ;
 int inb (scalar_t__) ;
 int munge_bipolar_sample (struct comedi_device*,int ) ;

__attribute__((used)) static void munge_data(struct comedi_device *dev, uint16_t * array,
         unsigned int num_elements)
{
 unsigned int i;
 int unipolar;


 unipolar = inb(dev->iobase + DAS1800_CONTROL_C) & UB;


 if (!unipolar) {
  for (i = 0; i < num_elements; i++) {
   array[i] = munge_bipolar_sample(dev, array[i]);
  }
 }
}
