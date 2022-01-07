
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_usb_adapter {int dev; } ;


 int CMD_AVER_STREAM_OFF ;
 int CMD_AVER_STREAM_ON ;
 int cxusb_ctrl_msg (int ,int ,int *,int ,int *,int ) ;

__attribute__((used)) static int cxusb_aver_streaming_ctrl(struct dvb_usb_adapter *adap, int onoff)
{
 if (onoff)
  cxusb_ctrl_msg(adap->dev, CMD_AVER_STREAM_ON, ((void*)0), 0, ((void*)0), 0);
 else
  cxusb_ctrl_msg(adap->dev, CMD_AVER_STREAM_OFF,
          ((void*)0), 0, ((void*)0), 0);
 return 0;
}
