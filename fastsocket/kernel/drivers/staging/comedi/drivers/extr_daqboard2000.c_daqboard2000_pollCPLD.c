
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ daq; } ;


 TYPE_1__* devpriv ;
 int readw (scalar_t__) ;
 int udelay (int) ;

__attribute__((used)) static int daqboard2000_pollCPLD(struct comedi_device *dev, int mask)
{
 int result = 0;
 int i;
 int cpld;


 for (i = 0; i < 50; i++) {
  cpld = readw(devpriv->daq + 0x1000);
  if ((cpld & mask) == mask) {
   result = 1;
   break;
  }
  udelay(100);
 }
 udelay(5);
 return result;
}
