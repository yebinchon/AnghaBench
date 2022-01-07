
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {char* vendor; char* name; int pktsize; int protocol_handler; int ps2dev; struct input_dev* dev; } ;
struct input_dev {int* evbit; int keybit; } ;


 int ABS_X ;
 int ABS_Y ;
 int BIT_MASK (int ) ;
 int BTN_TOUCH ;
 int ENODEV ;
 int EV_ABS ;
 int EV_KEY ;
 unsigned char TOUCHKIT_CMD ;
 unsigned char TOUCHKIT_CMD_ACTIVE ;
 unsigned char TOUCHKIT_CMD_LENGTH ;
 int TOUCHKIT_MAX_XC ;
 int TOUCHKIT_MAX_YC ;
 int TOUCHKIT_SEND_PARMS (int,int,unsigned char) ;
 int __set_bit (int ,int ) ;
 int input_set_abs_params (struct input_dev*,int ,int ,int ,int ,int ) ;
 scalar_t__ ps2_command (int *,unsigned char*,int) ;
 int touchkit_ps2_process_byte ;

int touchkit_ps2_detect(struct psmouse *psmouse, bool set_properties)
{
 struct input_dev *dev = psmouse->dev;
 unsigned char param[3];
 int command;

 param[0] = TOUCHKIT_CMD_LENGTH;
 param[1] = TOUCHKIT_CMD_ACTIVE;
 command = TOUCHKIT_SEND_PARMS(2, 3, TOUCHKIT_CMD);

 if (ps2_command(&psmouse->ps2dev, param, command))
  return -ENODEV;

 if (param[0] != TOUCHKIT_CMD || param[1] != 0x01 ||
     param[2] != TOUCHKIT_CMD_ACTIVE)
  return -ENODEV;

 if (set_properties) {
  dev->evbit[0] = BIT_MASK(EV_KEY) | BIT_MASK(EV_ABS);
  __set_bit(BTN_TOUCH, dev->keybit);
  input_set_abs_params(dev, ABS_X, 0, TOUCHKIT_MAX_XC, 0, 0);
  input_set_abs_params(dev, ABS_Y, 0, TOUCHKIT_MAX_YC, 0, 0);

  psmouse->vendor = "eGalax";
  psmouse->name = "Touchscreen";
  psmouse->protocol_handler = touchkit_ps2_process_byte;
  psmouse->pktsize = 5;
 }

 return 0;
}
