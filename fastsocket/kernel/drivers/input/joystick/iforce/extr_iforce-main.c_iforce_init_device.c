
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int vendor; int product; int bustype; } ;
struct TYPE_14__ {int * parent; } ;
struct input_dev {char* name; int* evbit; struct ff_device* ff; int ffbit; int keybit; TYPE_4__ id; TYPE_7__ dev; int close; int open; } ;
struct TYPE_12__ {char* name; int end; int * sibling; int * child; int * parent; int flags; scalar_t__ start; } ;
struct TYPE_8__ {int buf; } ;
struct iforce {int bus; int* edata; struct input_dev* dev; TYPE_6__* type; int ecmd; TYPE_5__ device_memory; TYPE_3__* serio; TYPE_2__* usbdev; int xmit_data; TYPE_1__ xmit; int mem_mutex; int xmit_lock; int wait; } ;
struct ff_device {int playback; int (* set_autocenter ) (struct input_dev*,int ) ;int set_gain; int erase; int upload; } ;
struct TYPE_13__ {int idvendor; int idproduct; char* name; scalar_t__* btn; short* abs; scalar_t__* ff; } ;
struct TYPE_10__ {int dev; } ;
struct TYPE_9__ {int dev; } ;
 int BIT_MASK (int ) ;
 short BTN_DEAD ;
 int BUS_RS232 ;
 int BUS_USB ;
 int ENODEV ;
 int ENOMEM ;
 int EV_ABS ;
 int EV_FF_STATUS ;
 int EV_KEY ;

 int IFORCE_EFFECTS_MAX ;

 int IORESOURCE_MEM ;
 int dev_warn (TYPE_7__*,char*,...) ;
 int err (char*) ;
 TYPE_6__* iforce_device ;
 int iforce_dump_packet (char*,int ,int*) ;
 int iforce_erase_effect ;
 int iforce_get_id_packet (struct iforce*,...) ;
 int iforce_open ;
 int iforce_playback ;
 int iforce_release ;
 int iforce_set_autocenter (struct input_dev*,int ) ;
 int iforce_set_gain ;
 int iforce_upload_effect ;
 int init_waitqueue_head (int *) ;
 struct input_dev* input_allocate_device () ;
 int input_ff_create (struct input_dev*,int) ;
 int input_free_device (struct input_dev*) ;
 int input_register_device (struct input_dev*) ;
 int input_set_abs_params (struct input_dev*,short,int,int,int,int) ;
 int input_set_drvdata (struct input_dev*,struct iforce*) ;
 int mutex_init (int *) ;
 int set_bit (short,int ) ;
 int spin_lock_init (int *) ;

int iforce_init_device(struct iforce *iforce)
{
 struct input_dev *input_dev;
 struct ff_device *ff;
 unsigned char c[] = "CEOV";
 int i, error;
 int ff_effects = 0;

 input_dev = input_allocate_device();
 if (!input_dev)
  return -ENOMEM;

 init_waitqueue_head(&iforce->wait);
 spin_lock_init(&iforce->xmit_lock);
 mutex_init(&iforce->mem_mutex);
 iforce->xmit.buf = iforce->xmit_data;
 iforce->dev = input_dev;





 switch (iforce->bus) {
 }

 input_set_drvdata(input_dev, iforce);

 input_dev->name = "Unknown I-Force device";
 input_dev->open = iforce_open;
 input_dev->close = iforce_release;





 iforce->device_memory.name = "I-Force device effect memory";
 iforce->device_memory.start = 0;
 iforce->device_memory.end = 200;
 iforce->device_memory.flags = IORESOURCE_MEM;
 iforce->device_memory.parent = ((void*)0);
 iforce->device_memory.child = ((void*)0);
 iforce->device_memory.sibling = ((void*)0);





 for (i = 0; i < 20; i++)
  if (!iforce_get_id_packet(iforce, "O"))
   break;

 if (i == 20) {
  err("Timeout waiting for response from device.");
  error = -ENODEV;
  goto fail;
 }





 if (!iforce_get_id_packet(iforce, "M"))
  input_dev->id.vendor = (iforce->edata[2] << 8) | iforce->edata[1];
 else
  dev_warn(&iforce->dev->dev, "Device does not respond to id packet M\n");

 if (!iforce_get_id_packet(iforce, "P"))
  input_dev->id.product = (iforce->edata[2] << 8) | iforce->edata[1];
 else
  dev_warn(&iforce->dev->dev, "Device does not respond to id packet P\n");

 if (!iforce_get_id_packet(iforce, "B"))
  iforce->device_memory.end = (iforce->edata[2] << 8) | iforce->edata[1];
 else
  dev_warn(&iforce->dev->dev, "Device does not respond to id packet B\n");

 if (!iforce_get_id_packet(iforce, "N"))
  ff_effects = iforce->edata[1];
 else
  dev_warn(&iforce->dev->dev, "Device does not respond to id packet N\n");


 if (ff_effects > IFORCE_EFFECTS_MAX) {
  dev_warn(&iforce->dev->dev, "Limiting number of effects to %d (device reports %d)\n",
         IFORCE_EFFECTS_MAX, ff_effects);
  ff_effects = IFORCE_EFFECTS_MAX;
 }





 for (i = 0; c[i]; i++)
  if (!iforce_get_id_packet(iforce, c + i))
   iforce_dump_packet("info", iforce->ecmd, iforce->edata);




 iforce_set_autocenter(input_dev, 0);





 for (i = 0; iforce_device[i].idvendor; i++)
  if (iforce_device[i].idvendor == input_dev->id.vendor &&
      iforce_device[i].idproduct == input_dev->id.product)
   break;

 iforce->type = iforce_device + i;
 input_dev->name = iforce->type->name;





 input_dev->evbit[0] = BIT_MASK(EV_KEY) | BIT_MASK(EV_ABS) |
  BIT_MASK(EV_FF_STATUS);

 for (i = 0; iforce->type->btn[i] >= 0; i++)
  set_bit(iforce->type->btn[i], input_dev->keybit);
 set_bit(BTN_DEAD, input_dev->keybit);

 for (i = 0; iforce->type->abs[i] >= 0; i++) {

  signed short t = iforce->type->abs[i];

  switch (t) {

   case 131:
   case 130:
   case 132:

    input_set_abs_params(input_dev, t, -1920, 1920, 16, 128);
    set_bit(t, input_dev->ffbit);
    break;

   case 133:
   case 139:
   case 140:

    input_set_abs_params(input_dev, t, 0, 255, 0, 0);
    break;

   case 134:

    input_set_abs_params(input_dev, t, -128, 127, 0, 0);
    break;

   case 138:
   case 137:
          case 136:
          case 135:

    input_set_abs_params(input_dev, t, -1, 1, 0, 0);
    break;
  }
 }

 if (ff_effects) {

  for (i = 0; iforce->type->ff[i] >= 0; i++)
   set_bit(iforce->type->ff[i], input_dev->ffbit);

  error = input_ff_create(input_dev, ff_effects);
  if (error)
   goto fail;

  ff = input_dev->ff;
  ff->upload = iforce_upload_effect;
  ff->erase = iforce_erase_effect;
  ff->set_gain = iforce_set_gain;
  ff->set_autocenter = iforce_set_autocenter;
  ff->playback = iforce_playback;
 }




 error = input_register_device(iforce->dev);
 if (error)
  goto fail;

 return 0;

 fail: input_free_device(input_dev);
 return error;
}
