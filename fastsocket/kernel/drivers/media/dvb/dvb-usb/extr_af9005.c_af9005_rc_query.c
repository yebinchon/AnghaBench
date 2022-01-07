
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct dvb_usb_device {int last_event; struct af9005_device_state* priv; } ;
struct af9005_device_state {int sequence; } ;


 int EIO ;
 int REMOTE_KEY_REPEAT ;
 int REMOTE_NO_KEY_PRESSED ;
 int deb_rc (char*,int,...) ;
 int debug_dump (int*,int,int (*) (char*,int,int )) ;
 int dvb_usb_generic_rw (struct dvb_usb_device*,int*,int,int*,int,int ) ;
 int err (char*) ;
 int rc_decode (struct dvb_usb_device*,int*,int,int *,int*) ;

__attribute__((used)) static int af9005_rc_query(struct dvb_usb_device *d, u32 * event, int *state)
{
 struct af9005_device_state *st = d->priv;
 int ret, len;

 u8 obuf[5];
 u8 ibuf[256];

 *state = REMOTE_NO_KEY_PRESSED;
 if (rc_decode == ((void*)0)) {

  return 0;
 }

 obuf[0] = 3;
 obuf[1] = 0;
 obuf[2] = 0x40;
 obuf[3] = 1;
 obuf[4] = st->sequence++;
 ret = dvb_usb_generic_rw(d, obuf, 5, ibuf, 256, 0);
 if (ret) {
  err("rc query failed");
  return ret;
 }
 if (ibuf[2] != 0x41) {
  err("rc query bad header.");
  return -EIO;
 }
 if (ibuf[4] != obuf[4]) {
  err("rc query bad sequence.");
  return -EIO;
 }
 len = ibuf[5];
 if (len > 246) {
  err("rc query invalid length");
  return -EIO;
 }
 if (len > 0) {
  deb_rc("rc data (%d) ", len);
  debug_dump((ibuf + 6), len, deb_rc);
  ret = rc_decode(d, &ibuf[6], len, event, state);
  if (ret) {
   err("rc_decode failed");
   return ret;
  } else {
   deb_rc("rc_decode state %x event %x\n", *state, *event);
   if (*state == REMOTE_KEY_REPEAT)
    *event = d->last_event;
  }
 }
 return 0;
}
