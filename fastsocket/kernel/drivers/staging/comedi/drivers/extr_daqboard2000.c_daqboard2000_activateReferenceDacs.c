
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct daqboard2000_hw {int refDacs; int dacControl; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {struct daqboard2000_hw* daq; } ;


 int DAQBOARD2000_NegRefDacSelect ;
 int DAQBOARD2000_PosRefDacSelect ;
 int DAQBOARD2000_RefBusy ;
 TYPE_1__* devpriv ;
 int udelay (int) ;

__attribute__((used)) static void daqboard2000_activateReferenceDacs(struct comedi_device *dev)
{
 struct daqboard2000_hw *fpga = devpriv->daq;
 int timeout;


 fpga->refDacs = 0x80 | DAQBOARD2000_PosRefDacSelect;
 for (timeout = 0; timeout < 20; timeout++) {
  if ((fpga->dacControl & DAQBOARD2000_RefBusy) == 0) {
   break;
  }
  udelay(2);
 }



 fpga->refDacs = 0x80 | DAQBOARD2000_NegRefDacSelect;
 for (timeout = 0; timeout < 20; timeout++) {
  if ((fpga->dacControl & DAQBOARD2000_RefBusy) == 0) {
   break;
  }
  udelay(2);
 }

}
