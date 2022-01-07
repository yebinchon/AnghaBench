
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_usb_adapter {int dev; } ;
typedef int buf ;


 int CMD_STREAMING_OFF ;
 int CMD_STREAMING_ON ;
 int cxusb_ctrl_msg (int ,int ,int*,int,int *,int ) ;
 int cxusb_d680_dmb_drain_video (int ) ;

__attribute__((used)) static int cxusb_d680_dmb_streaming_ctrl(
  struct dvb_usb_adapter *adap, int onoff)
{
 if (onoff) {
  u8 buf[2] = { 0x03, 0x00 };
  cxusb_d680_dmb_drain_video(adap->dev);
  return cxusb_ctrl_msg(adap->dev, CMD_STREAMING_ON,
   buf, sizeof(buf), ((void*)0), 0);
 } else {
  int ret = cxusb_ctrl_msg(adap->dev,
   CMD_STREAMING_OFF, ((void*)0), 0, ((void*)0), 0);
  return ret;
 }
}
