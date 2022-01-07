
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct au0828_dev {int dummy; } ;


 int AU0828_SENSORCTRL_100 ;
 int AU0828_SENSORCTRL_VBI_103 ;
 int au0828_writereg (struct au0828_dev*,int,int) ;
 int dprintk (int,char*) ;

int au0828_analog_stream_enable(struct au0828_dev *d)
{
 dprintk(1, "au0828_analog_stream_enable called\n");
 au0828_writereg(d, AU0828_SENSORCTRL_VBI_103, 0x00);
 au0828_writereg(d, 0x106, 0x00);

 au0828_writereg(d, 0x110, 0x00);
 au0828_writereg(d, 0x111, 0x00);
 au0828_writereg(d, 0x114, 0xa0);
 au0828_writereg(d, 0x115, 0x05);

 au0828_writereg(d, 0x112, 0x00);
 au0828_writereg(d, 0x113, 0x00);
 au0828_writereg(d, 0x116, 0xf2);
 au0828_writereg(d, 0x117, 0x00);
 au0828_writereg(d, AU0828_SENSORCTRL_100, 0xb3);

 return 0;
}
