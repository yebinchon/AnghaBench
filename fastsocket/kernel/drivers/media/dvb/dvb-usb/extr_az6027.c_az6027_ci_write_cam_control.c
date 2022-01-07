
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct dvb_usb_device {scalar_t__ priv; } ;
struct dvb_ca_en50221 {scalar_t__ data; } ;
struct az6027_device_state {int ca_mutex; } ;


 int EINVAL ;
 int az6027_usb_out_op (struct dvb_usb_device*,int,int,int,int *,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int warn (char*,int) ;

__attribute__((used)) static int az6027_ci_write_cam_control(struct dvb_ca_en50221 *ca,
           int slot,
           u8 address,
           u8 value)
{
 struct dvb_usb_device *d = (struct dvb_usb_device *)ca->data;
 struct az6027_device_state *state = (struct az6027_device_state *)d->priv;

 int ret;
 u8 req;
 u16 value1;
 u16 index;
 int blen;

 if (slot != 0)
  return -EINVAL;

 mutex_lock(&state->ca_mutex);
 req = 0xC4;
 value1 = address;
 index = value;
 blen = 0;

 ret = az6027_usb_out_op(d, req, value1, index, ((void*)0), blen);
 if (ret != 0) {
  warn("usb out operation failed. (%d)", ret);
  goto failed;
 }

failed:
 mutex_unlock(&state->ca_mutex);
 return ret;
}
