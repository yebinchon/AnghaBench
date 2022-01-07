
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int dummy; } ;


 int RtdClearCGT (struct comedi_device*) ;
 int RtdEnableCGT (struct comedi_device*,int) ;
 int RtdWriteCGLatch (struct comedi_device*,int ) ;
 int RtdWriteCGTable (struct comedi_device*,int ) ;
 int rtdConvertChanGain (struct comedi_device*,unsigned int,int) ;

__attribute__((used)) static void rtd_load_channelgain_list(struct comedi_device *dev,
          unsigned int n_chan, unsigned int *list)
{
 if (n_chan > 1) {
  int ii;
  RtdClearCGT(dev);
  RtdEnableCGT(dev, 1);
  for (ii = 0; ii < n_chan; ii++) {
   RtdWriteCGTable(dev, rtdConvertChanGain(dev, list[ii],
        ii));
  }
 } else {
  RtdEnableCGT(dev, 0);
  RtdWriteCGLatch(dev, rtdConvertChanGain(dev, list[0], 0));
 }
}
