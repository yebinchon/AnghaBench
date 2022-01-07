
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int iobase; } ;


 int C6X_encResetAll (int ) ;
 int C6X_pwmInit (int ) ;

__attribute__((used)) static void board_init(struct comedi_device *dev)
{



 C6X_pwmInit(dev->iobase);
 C6X_encResetAll(dev->iobase);

}
