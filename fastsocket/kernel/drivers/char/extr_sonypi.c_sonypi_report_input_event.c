
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct sonypi_keypress {struct input_dev* dev; int key; int * member_0; } ;
struct input_dev {int dummy; } ;
typedef int kp ;
struct TYPE_4__ {int input_work; int input_fifo; struct input_dev* input_key_dev; struct input_dev* input_jog_dev; } ;
struct TYPE_3__ {int sonypiev; int inputev; } ;


 int BTN_MIDDLE ;
 int REL_WHEEL ;






 int input_report_key (struct input_dev*,int ,int) ;
 int input_report_rel (struct input_dev*,int ,int) ;
 int input_sync (struct input_dev*) ;
 int kfifo_put (int ,unsigned char*,int) ;
 int schedule_work (int *) ;
 TYPE_2__ sonypi_device ;
 TYPE_1__* sonypi_inputkeys ;

__attribute__((used)) static void sonypi_report_input_event(u8 event)
{
 struct input_dev *jog_dev = sonypi_device.input_jog_dev;
 struct input_dev *key_dev = sonypi_device.input_key_dev;
 struct sonypi_keypress kp = { ((void*)0) };
 int i;

 switch (event) {
 case 129:
 case 128:
  input_report_rel(jog_dev, REL_WHEEL, 1);
  input_sync(jog_dev);
  break;

 case 132:
 case 131:
  input_report_rel(jog_dev, REL_WHEEL, -1);
  input_sync(jog_dev);
  break;

 case 130:
  kp.key = BTN_MIDDLE;
  kp.dev = jog_dev;
  break;

 case 133:

  break;

 default:
  for (i = 0; sonypi_inputkeys[i].sonypiev; i++)
   if (event == sonypi_inputkeys[i].sonypiev) {
    kp.dev = key_dev;
    kp.key = sonypi_inputkeys[i].inputev;
    break;
   }
  break;
 }

 if (kp.dev) {
  input_report_key(kp.dev, kp.key, 1);
  input_sync(kp.dev);
  kfifo_put(sonypi_device.input_fifo,
     (unsigned char *)&kp, sizeof(kp));
  schedule_work(&sonypi_device.input_work);
 }
}
