
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct dvb_usb_device {int dummy; } ;


 scalar_t__ DIBUSB_REQ_POLL_REMOTE ;
 int deb_info (char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int dvb_usb_generic_rw (struct dvb_usb_device*,scalar_t__*,int,scalar_t__*,int,int ) ;
 int dvb_usb_nec_rc_key_to_event (struct dvb_usb_device*,scalar_t__*,int *,int*) ;

int dibusb_rc_query(struct dvb_usb_device *d, u32 *event, int *state)
{
 u8 key[5],cmd = DIBUSB_REQ_POLL_REMOTE;
 dvb_usb_generic_rw(d,&cmd,1,key,5,0);
 dvb_usb_nec_rc_key_to_event(d,key,event,state);
 if (key[0] != 0)
  deb_info("key: %x %x %x %x %x\n",key[0],key[1],key[2],key[3],key[4]);
 return 0;
}
