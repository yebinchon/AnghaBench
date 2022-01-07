
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* serio; } ;
struct psmouse {int pktsize; int resetafter; scalar_t__ model; TYPE_2__ ps2dev; scalar_t__ resync_time; int reconnect; int disconnect; int poll; int protocol_handler; struct input_dev* dev; } ;
struct input_dev {int keybit; int relbit; int evbit; } ;
struct TYPE_8__ {int dattr; } ;
struct TYPE_7__ {int dattr; } ;
struct TYPE_5__ {int dev; } ;


 int BTN_LEFT ;
 int BTN_MIDDLE ;
 int BTN_RIGHT ;
 int EV_KEY ;
 int EV_REL ;
 scalar_t__ HGPK_MODEL_C ;
 int REL_X ;
 int REL_Y ;
 int __clear_bit (int ,int ) ;
 int __set_bit (int ,int ) ;
 int device_create_file (int *,int *) ;
 int device_remove_file (int *,int *) ;
 int hgpk_disconnect ;
 int hgpk_err (struct psmouse*,char*) ;
 int hgpk_poll ;
 int hgpk_process_byte ;
 int hgpk_reconnect ;
 TYPE_4__ psmouse_attr_powered ;
 TYPE_3__ psmouse_attr_recalibrate ;

__attribute__((used)) static int hgpk_register(struct psmouse *psmouse)
{
 struct input_dev *dev = psmouse->dev;
 int err;


 __clear_bit(BTN_MIDDLE, dev->keybit);


 __set_bit(EV_KEY, dev->evbit);
 __set_bit(EV_REL, dev->evbit);

 __set_bit(REL_X, dev->relbit);
 __set_bit(REL_Y, dev->relbit);

 __set_bit(BTN_LEFT, dev->keybit);
 __set_bit(BTN_RIGHT, dev->keybit);


 psmouse->protocol_handler = hgpk_process_byte;
 psmouse->poll = hgpk_poll;
 psmouse->disconnect = hgpk_disconnect;
 psmouse->reconnect = hgpk_reconnect;
 psmouse->pktsize = 3;


 psmouse->resync_time = 0;

 psmouse->resetafter = 1024;

 err = device_create_file(&psmouse->ps2dev.serio->dev,
     &psmouse_attr_powered.dattr);
 if (err) {
  hgpk_err(psmouse, "Failed creating 'powered' sysfs node\n");
  return err;
 }


 if (psmouse->model >= HGPK_MODEL_C) {
  err = device_create_file(&psmouse->ps2dev.serio->dev,
      &psmouse_attr_recalibrate.dattr);
  if (err) {
   hgpk_err(psmouse,
    "Failed creating 'recalibrate' sysfs node\n");
   device_remove_file(&psmouse->ps2dev.serio->dev,
     &psmouse_attr_powered.dattr);
   return err;
  }
 }

 return 0;
}
