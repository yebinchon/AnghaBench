
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_usb_adapter {int dev; } ;


 int CMD_STREAMING_OFF ;
 int CMD_STREAMING_ON ;
 int cxusb_ctrl_msg (int ,int ,int*,int,int *,int ) ;

__attribute__((used)) static int cxusb_streaming_ctrl(struct dvb_usb_adapter *adap, int onoff)
{
 u8 buf[2] = { 0x03, 0x00 };
 if (onoff)
  cxusb_ctrl_msg(adap->dev, CMD_STREAMING_ON, buf, 2, ((void*)0), 0);
 else
  cxusb_ctrl_msg(adap->dev, CMD_STREAMING_OFF, ((void*)0), 0, ((void*)0), 0);

 return 0;
}
