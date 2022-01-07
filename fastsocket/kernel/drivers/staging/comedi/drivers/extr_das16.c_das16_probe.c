
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_device {scalar_t__ iobase; } ;
struct comedi_devconfig {int dummy; } ;
struct TYPE_4__ {int ai_unipolar; int ai_singleended; } ;
struct TYPE_3__ {int id; } ;


 scalar_t__ DAS16_DIO ;
 int DAS16_MUXBIT ;
 scalar_t__ DAS16_STATUS ;
 int UNIPOLAR ;
 TYPE_2__* devpriv ;
 int inb (scalar_t__) ;
 int printk (char*,int) ;
 TYPE_1__* thisboard ;

__attribute__((used)) static int das16_probe(struct comedi_device *dev, struct comedi_devconfig *it)
{
 int status;
 int diobits;



 status = inb(dev->iobase + DAS16_STATUS);

 if ((status & UNIPOLAR)) {
  devpriv->ai_unipolar = 1;
 } else {
  devpriv->ai_unipolar = 0;
 }

 if ((status & DAS16_MUXBIT)) {
  devpriv->ai_singleended = 1;
 } else {
  devpriv->ai_singleended = 0;
 }



 diobits = inb(dev->iobase + DAS16_DIO) & 0xf0;

 printk(" id bits are 0x%02x\n", diobits);
 if (thisboard->id != diobits) {
  printk(" requested board's id bits are 0x%x (ignore)\n",
         thisboard->id);
 }

 return 0;
}
