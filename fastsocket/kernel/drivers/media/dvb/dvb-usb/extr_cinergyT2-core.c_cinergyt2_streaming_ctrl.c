
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_usb_adapter {int dev; } ;
typedef int result ;
typedef int buf ;


 int CINERGYT2_EP1_CONTROL_STREAM_TRANSFER ;
 int dvb_usb_generic_rw (int ,char*,int,char*,int,int ) ;

__attribute__((used)) static int cinergyt2_streaming_ctrl(struct dvb_usb_adapter *adap, int enable)
{
 char buf[] = { CINERGYT2_EP1_CONTROL_STREAM_TRANSFER, enable ? 1 : 0 };
 char result[64];
 return dvb_usb_generic_rw(adap->dev, buf, sizeof(buf), result,
    sizeof(result), 0);
}
