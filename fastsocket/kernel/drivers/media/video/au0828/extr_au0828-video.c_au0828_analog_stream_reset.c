
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct au0828_dev {int dummy; } ;


 int AU0828_SENSORCTRL_100 ;
 int au0828_writereg (struct au0828_dev*,int ,int) ;
 int dprintk (int,char*) ;
 int mdelay (int) ;

void au0828_analog_stream_reset(struct au0828_dev *dev)
{
 dprintk(1, "au0828_analog_stream_reset called\n");
 au0828_writereg(dev, AU0828_SENSORCTRL_100, 0x0);
 mdelay(30);
 au0828_writereg(dev, AU0828_SENSORCTRL_100, 0xb3);
}
