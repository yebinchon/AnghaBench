
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ iobase; } ;


 scalar_t__ AD_CLEAR_REG ;
 scalar_t__ AM9513A_COM_REG ;
 scalar_t__ AM9513A_DATA_REG ;
 int outw (int,scalar_t__) ;

__attribute__((used)) static void reset_counters(struct comedi_device *dev)
{

 outw(0xFFC2, dev->iobase + AM9513A_COM_REG);
 outw(0xFF02, dev->iobase + AM9513A_COM_REG);
 outw(0x4, dev->iobase + AM9513A_DATA_REG);
 outw(0xFF0A, dev->iobase + AM9513A_COM_REG);
 outw(0x3, dev->iobase + AM9513A_DATA_REG);
 outw(0xFF42, dev->iobase + AM9513A_COM_REG);
 outw(0xFF42, dev->iobase + AM9513A_COM_REG);

 outw(0xFFC4, dev->iobase + AM9513A_COM_REG);
 outw(0xFF03, dev->iobase + AM9513A_COM_REG);
 outw(0x4, dev->iobase + AM9513A_DATA_REG);
 outw(0xFF0B, dev->iobase + AM9513A_COM_REG);
 outw(0x3, dev->iobase + AM9513A_DATA_REG);
 outw(0xFF44, dev->iobase + AM9513A_COM_REG);
 outw(0xFF44, dev->iobase + AM9513A_COM_REG);

 outw(0xFFC8, dev->iobase + AM9513A_COM_REG);
 outw(0xFF04, dev->iobase + AM9513A_COM_REG);
 outw(0x4, dev->iobase + AM9513A_DATA_REG);
 outw(0xFF0C, dev->iobase + AM9513A_COM_REG);
 outw(0x3, dev->iobase + AM9513A_DATA_REG);
 outw(0xFF48, dev->iobase + AM9513A_COM_REG);
 outw(0xFF48, dev->iobase + AM9513A_COM_REG);

 outw(0xFFD0, dev->iobase + AM9513A_COM_REG);
 outw(0xFF05, dev->iobase + AM9513A_COM_REG);
 outw(0x4, dev->iobase + AM9513A_DATA_REG);
 outw(0xFF0D, dev->iobase + AM9513A_COM_REG);
 outw(0x3, dev->iobase + AM9513A_DATA_REG);
 outw(0xFF50, dev->iobase + AM9513A_COM_REG);
 outw(0xFF50, dev->iobase + AM9513A_COM_REG);

 outw(0, dev->iobase + AD_CLEAR_REG);
}
