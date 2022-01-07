
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * parent; } ;
struct TYPE_3__ {size_t product; int version; int vendor; int bustype; } ;
struct input_dev {int* evbit; int keybit; int close; int open; TYPE_2__ dev; TYPE_1__ id; int phys; int name; } ;
struct grip {size_t* mode; struct input_dev** dev; int * phys; struct gameport* gameport; } ;
struct gameport_driver {int dummy; } ;
struct gameport {char* phys; int dev; } ;


 int BIT_MASK (int ) ;
 int BUS_GAMEPORT ;
 int ENODEV ;
 int ENOMEM ;
 int EV_ABS ;
 int EV_KEY ;
 int GAMEPORT_ID_VENDOR_GRAVIS ;
 int GAMEPORT_MODE_RAW ;
 int GFP_KERNEL ;
 int GRIP_LENGTH_XT ;
 size_t GRIP_MODE_BD ;
 size_t GRIP_MODE_DC ;
 size_t GRIP_MODE_GPP ;
 size_t GRIP_MODE_XT ;
 int gameport_close (struct gameport*) ;
 int gameport_open (struct gameport*,struct gameport_driver*,int ) ;
 int gameport_set_drvdata (struct gameport*,struct grip*) ;
 int gameport_set_poll_handler (struct gameport*,int ) ;
 int gameport_set_poll_interval (struct gameport*,int) ;
 int** grip_abs ;
 int* grip_anx ;
 int** grip_btn ;
 int* grip_cen ;
 int grip_close ;
 int grip_gpp_read_packet (struct gameport*,int,unsigned int*) ;
 int * grip_name ;
 int grip_open ;
 int grip_poll ;
 int grip_xt_read_packet (struct gameport*,int,unsigned int*) ;
 struct input_dev* input_allocate_device () ;
 int input_free_device (struct input_dev*) ;
 int input_register_device (struct input_dev*) ;
 int input_set_abs_params (struct input_dev*,int,int,int,int,int) ;
 int input_set_drvdata (struct input_dev*,struct grip*) ;
 int input_unregister_device (struct input_dev*) ;
 int kfree (struct grip*) ;
 struct grip* kzalloc (int,int ) ;
 int set_bit (int,int ) ;
 int snprintf (int ,int,char*,char*,int) ;

__attribute__((used)) static int grip_connect(struct gameport *gameport, struct gameport_driver *drv)
{
 struct grip *grip;
 struct input_dev *input_dev;
 unsigned int data[GRIP_LENGTH_XT];
 int i, j, t;
 int err;

 if (!(grip = kzalloc(sizeof(struct grip), GFP_KERNEL)))
  return -ENOMEM;

 grip->gameport = gameport;

 gameport_set_drvdata(gameport, grip);

 err = gameport_open(gameport, drv, GAMEPORT_MODE_RAW);
 if (err)
  goto fail1;

 for (i = 0; i < 2; i++) {
  if (!grip_gpp_read_packet(gameport, (i << 1) + 4, data)) {
   grip->mode[i] = GRIP_MODE_GPP;
   continue;
  }
  if (!grip_xt_read_packet(gameport, (i << 1) + 4, data)) {
   if (!(data[3] & 7)) {
    grip->mode[i] = GRIP_MODE_BD;
    continue;
   }
   if (!(data[2] & 0xf0)) {
    grip->mode[i] = GRIP_MODE_XT;
    continue;
   }
   grip->mode[i] = GRIP_MODE_DC;
   continue;
  }
 }

 if (!grip->mode[0] && !grip->mode[1]) {
  err = -ENODEV;
  goto fail2;
 }

 gameport_set_poll_handler(gameport, grip_poll);
 gameport_set_poll_interval(gameport, 20);

 for (i = 0; i < 2; i++) {
  if (!grip->mode[i])
   continue;

  grip->dev[i] = input_dev = input_allocate_device();
  if (!input_dev) {
   err = -ENOMEM;
   goto fail3;
  }

  snprintf(grip->phys[i], sizeof(grip->phys[i]),
    "%s/input%d", gameport->phys, i);

  input_dev->name = grip_name[grip->mode[i]];
  input_dev->phys = grip->phys[i];
  input_dev->id.bustype = BUS_GAMEPORT;
  input_dev->id.vendor = GAMEPORT_ID_VENDOR_GRAVIS;
  input_dev->id.product = grip->mode[i];
  input_dev->id.version = 0x0100;
  input_dev->dev.parent = &gameport->dev;

  input_set_drvdata(input_dev, grip);

  input_dev->open = grip_open;
  input_dev->close = grip_close;

  input_dev->evbit[0] = BIT_MASK(EV_KEY) | BIT_MASK(EV_ABS);

  for (j = 0; (t = grip_abs[grip->mode[i]][j]) >= 0; j++) {

   if (j < grip_cen[grip->mode[i]])
    input_set_abs_params(input_dev, t, 14, 52, 1, 2);
   else if (j < grip_anx[grip->mode[i]])
    input_set_abs_params(input_dev, t, 3, 57, 1, 0);
   else
    input_set_abs_params(input_dev, t, -1, 1, 0, 0);
  }

  for (j = 0; (t = grip_btn[grip->mode[i]][j]) >= 0; j++)
   if (t > 0)
    set_bit(t, input_dev->keybit);

  err = input_register_device(grip->dev[i]);
  if (err)
   goto fail4;
 }

 return 0;

 fail4: input_free_device(grip->dev[i]);
 fail3: while (--i >= 0)
  if (grip->dev[i])
   input_unregister_device(grip->dev[i]);
 fail2: gameport_close(gameport);
 fail1: gameport_set_drvdata(gameport, ((void*)0));
 kfree(grip);
 return err;
}
