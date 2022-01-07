
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct gp8psk_fe_state {int lock; int snr; int status_check_interval; scalar_t__ next_status_check; int d; } ;


 int GET_SIGNAL_LOCK ;
 int GET_SIGNAL_STRENGTH ;
 int HZ ;
 int gp8psk_usb_in_op (int ,int ,int ,int ,int*,int) ;
 scalar_t__ jiffies ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;

__attribute__((used)) static int gp8psk_fe_update_status(struct gp8psk_fe_state *st)
{
 u8 buf[6];
 if (time_after(jiffies,st->next_status_check)) {
  gp8psk_usb_in_op(st->d, GET_SIGNAL_LOCK, 0,0,&st->lock,1);
  gp8psk_usb_in_op(st->d, GET_SIGNAL_STRENGTH, 0,0,buf,6);
  st->snr = (buf[1]) << 8 | buf[0];
  st->next_status_check = jiffies + (st->status_check_interval*HZ)/1000;
 }
 return 0;
}
