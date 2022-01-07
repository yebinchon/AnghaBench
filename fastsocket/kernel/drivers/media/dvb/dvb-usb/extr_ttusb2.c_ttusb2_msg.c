
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ttusb2_state {int id; } ;
struct dvb_usb_device {struct ttusb2_state* priv; } ;


 int EIO ;
 int dvb_usb_generic_rw (struct dvb_usb_device*,int*,int,int*,int,int ) ;
 int memcpy (int*,int*,int) ;
 int memset (int*,int ,int) ;
 int warn (char*,int,int) ;

__attribute__((used)) static int ttusb2_msg(struct dvb_usb_device *d, u8 cmd,
  u8 *wbuf, int wlen, u8 *rbuf, int rlen)
{
 struct ttusb2_state *st = d->priv;
 u8 s[wlen+4],r[64] = { 0 };
 int ret = 0;

 memset(s,0,wlen+4);

 s[0] = 0xaa;
 s[1] = ++st->id;
 s[2] = cmd;
 s[3] = wlen;
 memcpy(&s[4],wbuf,wlen);

 ret = dvb_usb_generic_rw(d, s, wlen+4, r, 64, 0);

 if (ret != 0 ||
  r[0] != 0x55 ||
  r[1] != s[1] ||
  r[2] != cmd ||
  (rlen > 0 && r[3] != rlen)) {
  warn("there might have been an error during control message transfer. (rlen = %d, was %d)",rlen,r[3]);
  return -EIO;
 }

 if (rlen > 0)
  memcpy(rbuf, &r[4], rlen);

 return 0;
}
