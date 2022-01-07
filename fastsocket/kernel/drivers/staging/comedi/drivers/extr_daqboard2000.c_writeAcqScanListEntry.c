
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct daqboard2000_hw {int acqScanListFIFO; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {struct daqboard2000_hw* daq; } ;


 TYPE_1__* devpriv ;

__attribute__((used)) static void writeAcqScanListEntry(struct comedi_device *dev, u16 entry)
{
 struct daqboard2000_hw *fpga = devpriv->daq;


 fpga->acqScanListFIFO = entry & 0x00ff;

 fpga->acqScanListFIFO = (entry >> 8) & 0x00ff;
}
