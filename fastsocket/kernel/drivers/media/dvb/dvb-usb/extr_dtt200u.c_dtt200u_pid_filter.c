
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct dvb_usb_adapter {int dev; } ;


 int SET_PID_FILTER ;
 int dvb_usb_generic_write (int ,int*,int) ;

__attribute__((used)) static int dtt200u_pid_filter(struct dvb_usb_adapter *adap, int index, u16 pid, int onoff)
{
 u8 b_pid[4];
 pid = onoff ? pid : 0;

 b_pid[0] = SET_PID_FILTER;
 b_pid[1] = index;
 b_pid[2] = pid & 0xff;
 b_pid[3] = (pid >> 8) & 0x1f;

 return dvb_usb_generic_write(adap->dev, b_pid, 4);
}
