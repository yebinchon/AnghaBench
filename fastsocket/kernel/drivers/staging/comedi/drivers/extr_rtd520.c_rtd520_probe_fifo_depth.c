
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int dummy; } ;


 int AREF_GROUND ;
 unsigned int CR_PACK (int ,int ,int ) ;
 int DRV_NAME ;
 int EIO ;
 unsigned int FS_ADC_HEMPTY ;
 int RtdAdcClearFifo (struct comedi_device*) ;
 int RtdAdcConversionSource (struct comedi_device*,int ) ;
 int RtdAdcStart (struct comedi_device*) ;
 unsigned int RtdFifoStatus (struct comedi_device*) ;
 int printk (char*,int ,...) ;
 int rtd_load_channelgain_list (struct comedi_device*,int,unsigned int*) ;
 int udelay (int) ;

__attribute__((used)) static int rtd520_probe_fifo_depth(struct comedi_device *dev)
{
 unsigned int chanspec = CR_PACK(0, 0, AREF_GROUND);
 unsigned i;
 static const unsigned limit = 0x2000;
 unsigned fifo_size = 0;

 RtdAdcClearFifo(dev);
 rtd_load_channelgain_list(dev, 1, &chanspec);
 RtdAdcConversionSource(dev, 0);

 for (i = 0; i < limit; ++i) {
  unsigned fifo_status;

  RtdAdcStart(dev);
  udelay(1);
  fifo_status = RtdFifoStatus(dev);
  if ((fifo_status & FS_ADC_HEMPTY) == 0) {
   fifo_size = 2 * i;
   break;
  }
 }
 if (i == limit) {
  printk("\ncomedi: %s: failed to probe fifo size.\n", DRV_NAME);
  return -EIO;
 }
 RtdAdcClearFifo(dev);
 if (fifo_size != 0x400 && fifo_size != 0x2000) {
  printk
      ("\ncomedi: %s: unexpected fifo size of %i, expected 1024 or 8192.\n",
       DRV_NAME, fifo_size);
  return -EIO;
 }
 return fifo_size;
}
