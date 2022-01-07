
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct dvb_usb_device {struct dibusb_device_state* priv; } ;
struct dibusb_device_state {int old_toggle; int last_repeat_count; } ;
struct TYPE_5__ {int event; } ;


 int ARRAY_SIZE (TYPE_1__*) ;


 int DIBUSB_REQ_POLL_REMOTE ;
 int REMOTE_KEY_PRESSED ;
 int REMOTE_NO_KEY_PRESSED ;
 int deb_rc (char*,int,int,...) ;
 int dvb_usb_generic_rw (struct dvb_usb_device*,int*,int,int*,int,int ) ;
 int rc5_custom (TYPE_1__*) ;
 int rc5_data (TYPE_1__*) ;
 TYPE_1__* rc_map_haupp_table ;

__attribute__((used)) static int nova_t_rc_query(struct dvb_usb_device *d, u32 *event, int *state)
{
 u8 key[5],cmd[2] = { DIBUSB_REQ_POLL_REMOTE, 0x35 }, data,toggle,custom;
 u16 raw;
 int i;
 struct dibusb_device_state *st = d->priv;

 dvb_usb_generic_rw(d,cmd,2,key,5,0);

 *state = REMOTE_NO_KEY_PRESSED;
 switch (key[0]) {
  case 128:
   raw = ((key[1] << 8) | key[2]) >> 3;
   toggle = !!(raw & 0x800);
   data = raw & 0x3f;
   custom = (raw >> 6) & 0x1f;

   deb_rc("raw key code 0x%02x, 0x%02x, 0x%02x to c: %02x d: %02x toggle: %d\n",key[1],key[2],key[3],custom,data,toggle);

   for (i = 0; i < ARRAY_SIZE(rc_map_haupp_table); i++) {
    if (rc5_data(&rc_map_haupp_table[i]) == data &&
     rc5_custom(&rc_map_haupp_table[i]) == custom) {

     deb_rc("c: %x, d: %x\n", rc5_data(&rc_map_haupp_table[i]),
         rc5_custom(&rc_map_haupp_table[i]));

     *event = rc_map_haupp_table[i].event;
     *state = REMOTE_KEY_PRESSED;
     if (st->old_toggle == toggle) {
      if (st->last_repeat_count++ < 2)
       *state = REMOTE_NO_KEY_PRESSED;
     } else {
      st->last_repeat_count = 0;
      st->old_toggle = toggle;
     }
     break;
    }
   }

   break;
  case 129:
  default:
   break;
 }

 return 0;
}
