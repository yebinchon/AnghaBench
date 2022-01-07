
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * parent; } ;
struct TYPE_4__ {int product; int version; int vendor; int bustype; } ;
struct input_dev {int* evbit; int keybit; int close; int open; TYPE_2__ dev; TYPE_1__ id; int phys; int name; } ;
struct analog_port {int* axes; int buttons; int initial; int fuzz; TYPE_3__* gameport; } ;
struct analog {int mask; struct input_dev* dev; int * buttons; int phys; int name; } ;
struct TYPE_6__ {char* phys; int dev; } ;


 int ANALOG_BTNS_CHF ;
 int ANALOG_BTN_TL ;
 int ANALOG_GAMEPAD ;
 int ANALOG_HBTN_CHF ;
 int ANALOG_SAITEK ;
 int BIT_MASK (int ) ;
 int BUS_GAMEPORT ;
 int ENOMEM ;
 int EV_ABS ;
 int EV_KEY ;
 int GAMEPORT_ID_VENDOR_ANALOG ;
 int* analog_axes ;
 int analog_close ;
 int analog_decode (struct analog*,int*,int ,int ) ;
 int* analog_exts ;
 int* analog_hats ;
 int * analog_joy_btn ;
 int analog_name (struct analog*) ;
 int analog_open ;
 int * analog_pad_btn ;
 int * analog_pads ;
 struct input_dev* input_allocate_device () ;
 int input_free_device (struct input_dev*) ;
 int input_register_device (struct input_dev*) ;
 int input_set_abs_params (struct input_dev*,int,int,int,int ,int) ;
 int input_set_drvdata (struct input_dev*,struct analog_port*) ;
 int set_bit (int ,int ) ;
 int snprintf (int ,int,char*,char*,int) ;

__attribute__((used)) static int analog_init_device(struct analog_port *port, struct analog *analog, int index)
{
 struct input_dev *input_dev;
 int i, j, t, v, w, x, y, z;
 int error;

 analog_name(analog);
 snprintf(analog->phys, sizeof(analog->phys),
   "%s/input%d", port->gameport->phys, index);
 analog->buttons = (analog->mask & ANALOG_GAMEPAD) ? analog_pad_btn : analog_joy_btn;

 analog->dev = input_dev = input_allocate_device();
 if (!input_dev)
  return -ENOMEM;

 input_dev->name = analog->name;
 input_dev->phys = analog->phys;
 input_dev->id.bustype = BUS_GAMEPORT;
 input_dev->id.vendor = GAMEPORT_ID_VENDOR_ANALOG;
 input_dev->id.product = analog->mask >> 4;
 input_dev->id.version = 0x0100;
 input_dev->dev.parent = &port->gameport->dev;

 input_set_drvdata(input_dev, port);

 input_dev->open = analog_open;
 input_dev->close = analog_close;

 input_dev->evbit[0] = BIT_MASK(EV_KEY) | BIT_MASK(EV_ABS);

 for (i = j = 0; i < 4; i++)
  if (analog->mask & (1 << i)) {

   t = analog_axes[j];
   x = port->axes[i];
   y = (port->axes[0] + port->axes[1]) >> 1;
   z = y - port->axes[i];
   z = z > 0 ? z : -z;
   v = (x >> 3);
   w = (x >> 3);

   if ((i == 2 || i == 3) && (j == 2 || j == 3) && (z > (y >> 3)))
    x = y;

   if (analog->mask & ANALOG_SAITEK) {
    if (i == 2) x = port->axes[i];
    v = x - (x >> 2);
    w = (x >> 4);
   }

   input_set_abs_params(input_dev, t, v, (x << 1) - v, port->fuzz, w);
   j++;
  }

 for (i = j = 0; i < 3; i++)
  if (analog->mask & analog_exts[i])
   for (x = 0; x < 2; x++) {
    t = analog_hats[j++];
    input_set_abs_params(input_dev, t, -1, 1, 0, 0);
   }

 for (i = j = 0; i < 4; i++)
  if (analog->mask & (0x10 << i))
   set_bit(analog->buttons[j++], input_dev->keybit);

 if (analog->mask & ANALOG_BTNS_CHF)
  for (i = 0; i < 2; i++)
   set_bit(analog->buttons[j++], input_dev->keybit);

 if (analog->mask & ANALOG_HBTN_CHF)
  for (i = 0; i < 4; i++)
   set_bit(analog->buttons[j++], input_dev->keybit);

 for (i = 0; i < 4; i++)
  if (analog->mask & (ANALOG_BTN_TL << i))
   set_bit(analog_pads[i], input_dev->keybit);

 analog_decode(analog, port->axes, port->initial, port->buttons);

 error = input_register_device(analog->dev);
 if (error) {
  input_free_device(analog->dev);
  return error;
 }

 return 0;
}
