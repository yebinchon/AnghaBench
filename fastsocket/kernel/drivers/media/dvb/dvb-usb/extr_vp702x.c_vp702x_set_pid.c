
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct vp702x_state {int pid_filter_state; } ;
struct dvb_usb_adapter {int dev; struct vp702x_state* priv; } ;
typedef int pid ;


 int vp702x_set_pld_state (struct dvb_usb_adapter*,int) ;
 int vp702x_usb_in_op (int ,int,int,int ,int*,int) ;

__attribute__((used)) static int vp702x_set_pid(struct dvb_usb_adapter *adap, u16 pid, u8 id, int onoff)
{
 struct vp702x_state *st = adap->priv;
 u8 buf[16] = { 0 };

 if (onoff)
  st->pid_filter_state |= (1 << id);
 else {
  st->pid_filter_state &= ~(1 << id);
  pid = 0xffff;
 }

 id = 0x10 + id*2;

 vp702x_set_pld_state(adap, st->pid_filter_state);
 vp702x_usb_in_op(adap->dev, 0xe0, (((pid >> 8) & 0xff) << 8) | (id), 0, buf, 16);
 vp702x_usb_in_op(adap->dev, 0xe0, (((pid ) & 0xff) << 8) | (id+1), 0, buf, 16);
 return 0;
}
