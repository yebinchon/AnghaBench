
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct TYPE_2__ {unsigned short (* stc_readw ) (struct comedi_device*,int ) ;} ;


 unsigned short AO_FIFO_Half_Full_St ;
 int AO_Status_1_Register ;
 int EPIPE ;
 int comedi_error (struct comedi_device*,char*) ;
 TYPE_1__* devpriv ;
 unsigned short stub1 (struct comedi_device*,int ) ;
 int udelay (int) ;

__attribute__((used)) static int ni_ao_wait_for_dma_load(struct comedi_device *dev)
{
 static const int timeout = 10000;
 int i;
 for (i = 0; i < timeout; i++) {
  unsigned short b_status;

  b_status = devpriv->stc_readw(dev, AO_Status_1_Register);
  if (b_status & AO_FIFO_Half_Full_St)
   break;


  udelay(10);
 }
 if (i == timeout) {
  comedi_error(dev, "timed out waiting for dma load");
  return -EPIPE;
 }
 return 0;
}
