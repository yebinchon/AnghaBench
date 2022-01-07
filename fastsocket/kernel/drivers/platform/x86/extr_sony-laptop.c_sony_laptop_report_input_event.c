
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sony_laptop_keypress {struct input_dev* dev; int key; int * member_0; } ;
struct input_dev {int dummy; } ;
typedef int kp ;
struct TYPE_2__ {int wq; int fifo; struct input_dev* key_dev; struct input_dev* jog_dev; } ;


 int ARRAY_SIZE (int*) ;
 int BTN_MIDDLE ;
 int EV_MSC ;
 int KEY_UNKNOWN ;
 int MSC_SCAN ;
 int REL_WHEEL ;
 int SONYPI_EVENT_ANYBUTTON_RELEASED ;
 int SONYPI_EVENT_FNKEY_RELEASED ;





 int dprintk (char*,int) ;
 int input_event (struct input_dev*,int ,int ,int) ;
 int input_report_key (struct input_dev*,int ,int) ;
 int input_report_rel (struct input_dev*,int ,int) ;
 int input_sync (struct input_dev*) ;
 int kfifo_put (int ,unsigned char*,int) ;
 int queue_work (int ,int *) ;
 TYPE_1__ sony_laptop_input ;
 int* sony_laptop_input_index ;
 int * sony_laptop_input_keycode_map ;
 int sony_laptop_release_key_work ;
 int work_pending (int *) ;

__attribute__((used)) static void sony_laptop_report_input_event(u8 event)
{
 struct input_dev *jog_dev = sony_laptop_input.jog_dev;
 struct input_dev *key_dev = sony_laptop_input.key_dev;
 struct sony_laptop_keypress kp = { ((void*)0) };

 if (event == SONYPI_EVENT_FNKEY_RELEASED ||
   event == SONYPI_EVENT_ANYBUTTON_RELEASED) {

  return;
 }


 switch (event) {

 case 129:
 case 128:
  input_report_rel(jog_dev, REL_WHEEL, 1);
  input_sync(jog_dev);
  return;

 case 132:
 case 131:
  input_report_rel(jog_dev, REL_WHEEL, -1);
  input_sync(jog_dev);
  return;


 case 130:
  kp.key = BTN_MIDDLE;
  kp.dev = jog_dev;
  break;

 default:
  if (event >= ARRAY_SIZE(sony_laptop_input_index)) {
   dprintk("sony_laptop_report_input_event, event not known: %d\n", event);
   break;
  }
  if (sony_laptop_input_index[event] != -1) {
   kp.key = sony_laptop_input_keycode_map[sony_laptop_input_index[event]];
   if (kp.key != KEY_UNKNOWN)
    kp.dev = key_dev;
  }
  break;
 }

 if (kp.dev) {
  input_report_key(kp.dev, kp.key, 1);

  input_event(kp.dev, EV_MSC, MSC_SCAN, event);
  input_sync(kp.dev);
  kfifo_put(sony_laptop_input.fifo,
     (unsigned char *)&kp, sizeof(kp));

  if (!work_pending(&sony_laptop_release_key_work))
   queue_work(sony_laptop_input.wq,
     &sony_laptop_release_key_work);
 } else
  dprintk("unknown input event %.2x\n", event);
}
