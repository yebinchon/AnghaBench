
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_usb_device {int dummy; } ;
typedef int state ;
typedef int buf ;


 int CINERGYT2_EP1_SLEEP_MODE ;
 int dvb_usb_generic_rw (struct dvb_usb_device*,char*,int,char*,int,int ) ;

__attribute__((used)) static int cinergyt2_power_ctrl(struct dvb_usb_device *d, int enable)
{
 char buf[] = { CINERGYT2_EP1_SLEEP_MODE, enable ? 0 : 1 };
 char state[3];
 return dvb_usb_generic_rw(d, buf, sizeof(buf), state, sizeof(state), 0);
}
