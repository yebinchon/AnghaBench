
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u8 ;
struct dvb_usb_adapter {int dev; int fe; } ;


 int EIO ;
 int GET_SYSTEM_STRING ;
 int SET_TUNER_POWER_REQ ;
 int info (char*,char*) ;
 int vp702x_fe_attach (int ) ;
 int vp702x_init_pid_filter (struct dvb_usb_adapter*) ;
 scalar_t__ vp702x_usb_inout_cmd (int ,int ,int *,int ,char*,int,int) ;
 int vp702x_usb_out_op (int ,int ,int,int,int *,int ) ;

__attribute__((used)) static int vp702x_frontend_attach(struct dvb_usb_adapter *adap)
{
 u8 buf[10] = { 0 };

 vp702x_usb_out_op(adap->dev, SET_TUNER_POWER_REQ, 0, 7, ((void*)0), 0);

 if (vp702x_usb_inout_cmd(adap->dev, GET_SYSTEM_STRING, ((void*)0), 0, buf, 10, 10))
  return -EIO;

 buf[9] = '\0';
 info("system string: %s",&buf[1]);

 vp702x_init_pid_filter(adap);

 adap->fe = vp702x_fe_attach(adap->dev);
 vp702x_usb_out_op(adap->dev, SET_TUNER_POWER_REQ, 1, 7, ((void*)0), 0);

 return 0;
}
