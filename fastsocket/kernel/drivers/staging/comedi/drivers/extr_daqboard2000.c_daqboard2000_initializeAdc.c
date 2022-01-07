
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int dummy; } ;


 int daqboard2000_activateReferenceDacs (struct comedi_device*) ;
 int daqboard2000_adcDisarm (struct comedi_device*) ;
 int daqboard2000_initializeCtrs (struct comedi_device*) ;
 int daqboard2000_initializeTmrs (struct comedi_device*) ;

__attribute__((used)) static void daqboard2000_initializeAdc(struct comedi_device *dev)
{
 daqboard2000_adcDisarm(dev);
 daqboard2000_activateReferenceDacs(dev);
 daqboard2000_initializeCtrs(dev);
 daqboard2000_initializeTmrs(dev);
}
