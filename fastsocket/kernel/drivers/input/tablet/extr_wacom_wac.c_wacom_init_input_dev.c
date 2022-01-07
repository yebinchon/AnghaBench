
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wacom_wac {TYPE_1__* features; } ;
struct input_dev {int dummy; } ;
struct TYPE_2__ {int type; int device_type; } ;



 int BTN_TOOL_PEN ;
 int input_dev_24hd (struct input_dev*,struct wacom_wac*) ;
 int input_dev_bamboo_pt (struct input_dev*,struct wacom_wac*) ;
 int input_dev_bee (struct input_dev*,struct wacom_wac*) ;
 int input_dev_c21ux2 (struct input_dev*,struct wacom_wac*) ;
 int input_dev_c22hd (struct input_dev*,struct wacom_wac*) ;
 int input_dev_cintiq (struct input_dev*,struct wacom_wac*) ;
 int input_dev_g (struct input_dev*,struct wacom_wac*) ;
 int input_dev_g4 (struct input_dev*,struct wacom_wac*) ;
 int input_dev_i (struct input_dev*,struct wacom_wac*) ;
 int input_dev_i3 (struct input_dev*,struct wacom_wac*) ;
 int input_dev_i3s (struct input_dev*,struct wacom_wac*) ;
 int input_dev_i4 (struct input_dev*,struct wacom_wac*) ;
 int input_dev_i4s (struct input_dev*,struct wacom_wac*) ;
 int input_dev_mo (struct input_dev*,struct wacom_wac*) ;
 int input_dev_pl (struct input_dev*,struct wacom_wac*) ;
 int input_dev_pt (struct input_dev*,struct wacom_wac*) ;
 int input_dev_tpc (struct input_dev*,struct wacom_wac*) ;
 int input_dev_tpc2fg (struct input_dev*,struct wacom_wac*) ;

void wacom_init_input_dev(struct input_dev *input_dev, struct wacom_wac *wacom_wac)
{
 switch (wacom_wac->features->type) {
  case 128:
   input_dev_mo(input_dev, wacom_wac);
  case 129:
   input_dev_g4(input_dev, wacom_wac);

  case 149:
   input_dev_g(input_dev, wacom_wac);
   break;
  case 131:
   input_dev_24hd(input_dev, wacom_wac);
   break;
  case 132:
   input_dev_c22hd(input_dev, wacom_wac);

  case 133:
   input_dev_c21ux2(input_dev, wacom_wac);

  case 130:
   input_dev_bee(input_dev, wacom_wac);

  case 147:
  case 146:
   input_dev_i3(input_dev, wacom_wac);

  case 145:
   input_dev_i3s(input_dev, wacom_wac);

  case 148:
   input_dev_i(input_dev, wacom_wac);
   break;
  case 141:
  case 140:
  case 144:
  case 143:
   input_dev_i4(input_dev, wacom_wac);

  case 139:
  case 142:
   input_dev_i4s(input_dev, wacom_wac);
   input_dev_i(input_dev, wacom_wac);
   break;
  case 134:
   input_dev_tpc2fg(input_dev, wacom_wac);

  case 135:
   input_dev_tpc(input_dev, wacom_wac);
   if (wacom_wac->features->device_type != BTN_TOOL_PEN)
    break;


  case 137:
  case 136:
  case 150:
   input_dev_pl(input_dev, wacom_wac);

  case 138:
   input_dev_pt(input_dev, wacom_wac);
   break;
                case 151:
                        input_dev_cintiq(input_dev, wacom_wac);
                        break;
  case 152:
   input_dev_bamboo_pt(input_dev, wacom_wac);
   break;
 }
 return;
}
