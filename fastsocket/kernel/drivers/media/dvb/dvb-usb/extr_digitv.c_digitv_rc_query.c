
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct TYPE_4__ {int rc_key_map_size; TYPE_2__* rc_key_map; } ;
struct dvb_usb_device {TYPE_1__ props; } ;
struct TYPE_5__ {int event; } ;


 int REMOTE_KEY_PRESSED ;
 int REMOTE_NO_KEY_PRESSED ;
 int USB_READ_REMOTE ;
 int USB_WRITE_REMOTE ;
 int deb_rc (char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int digitv_ctrl_msg (struct dvb_usb_device*,int ,int ,scalar_t__*,int,scalar_t__*,int) ;
 scalar_t__ rc5_custom (TYPE_2__*) ;
 scalar_t__ rc5_data (TYPE_2__*) ;

__attribute__((used)) static int digitv_rc_query(struct dvb_usb_device *d, u32 *event, int *state)
{
 int i;
 u8 key[5];
 u8 b[4] = { 0 };

 *event = 0;
 *state = REMOTE_NO_KEY_PRESSED;

 digitv_ctrl_msg(d,USB_READ_REMOTE,0,((void*)0),0,&key[1],4);



 digitv_ctrl_msg(d,USB_WRITE_REMOTE,0,b,4,((void*)0),0);


 if (key[1] != 0)
 {
    for (i = 0; i < d->props.rc_key_map_size; i++) {
   if (rc5_custom(&d->props.rc_key_map[i]) == key[1] &&
       rc5_data(&d->props.rc_key_map[i]) == key[2]) {
    *event = d->props.rc_key_map[i].event;
    *state = REMOTE_KEY_PRESSED;
    return 0;
   }
  }
 }

 if (key[0] != 0)
  deb_rc("key: %x %x %x %x %x\n",key[0],key[1],key[2],key[3],key[4]);
 return 0;
}
