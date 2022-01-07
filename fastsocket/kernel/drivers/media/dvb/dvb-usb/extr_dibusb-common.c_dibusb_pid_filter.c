
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct dvb_usb_adapter {int fe; struct dibusb_state* priv; } ;
struct TYPE_2__ {int (* pid_ctrl ) (int ,int,int ,int) ;} ;
struct dibusb_state {TYPE_1__ ops; } ;


 int stub1 (int ,int,int ,int) ;

int dibusb_pid_filter(struct dvb_usb_adapter *adap, int index, u16 pid, int onoff)
{
 if (adap->priv != ((void*)0)) {
  struct dibusb_state *st = adap->priv;
  if (st->ops.pid_ctrl != ((void*)0))
   st->ops.pid_ctrl(adap->fe,index,pid,onoff);
 }
 return 0;
}
