
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ daq; } ;


 int DAQBOARD2000_CPLD_INIT ;
 TYPE_1__* devpriv ;
 int readw (scalar_t__) ;
 int udelay (int) ;
 int writew (int,scalar_t__) ;

__attribute__((used)) static int daqboard2000_writeCPLD(struct comedi_device *dev, int data)
{
 int result = 0;

 udelay(10);
 writew(data, devpriv->daq + 0x1000);
 if ((readw(devpriv->daq + 0x1000) & DAQBOARD2000_CPLD_INIT) ==
     DAQBOARD2000_CPLD_INIT) {
  result = 1;
 }
 return result;
}
