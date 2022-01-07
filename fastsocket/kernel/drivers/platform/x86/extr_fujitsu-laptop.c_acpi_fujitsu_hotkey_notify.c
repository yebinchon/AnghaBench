
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct input_dev {int dummy; } ;
struct acpi_device {int dummy; } ;
typedef int keycode_r ;
typedef int keycode ;
struct TYPE_4__ {int keycode1; int keycode2; int keycode3; int keycode4; } ;
struct TYPE_3__ {int fifo; void* rfkill_state; scalar_t__ rfkill_supported; struct input_dev* input; } ;



 int FUJLAPTOP_DBG_TRACE ;
 int FUJLAPTOP_DBG_WARN ;
 int FUNC_BUTTONS ;
 int FUNC_RFKILL ;




 int KEY_UNKNOWN ;
 int MAX_HOTKEY_RINGBUFFER_SIZE ;
 void* call_fext_func (int ,int,int,int) ;
 TYPE_2__* fujitsu ;
 TYPE_1__* fujitsu_hotkey ;
 int input_report_key (struct input_dev*,int,int) ;
 int input_sync (struct input_dev*) ;
 int kfifo_get (int ,unsigned char*,int) ;
 int kfifo_put (int ,unsigned char*,int) ;
 int vdbg_printk (int ,char*,int) ;

__attribute__((used)) static void acpi_fujitsu_hotkey_notify(struct acpi_device *device, u32 event)
{
 struct input_dev *input;
 int keycode, keycode_r;
 unsigned int irb = 1;
 int i, status;

 input = fujitsu_hotkey->input;

 if (fujitsu_hotkey->rfkill_supported)
  fujitsu_hotkey->rfkill_state =
   call_fext_func(FUNC_RFKILL, 0x4, 0x0, 0x0);

 switch (event) {
 case 132:
  i = 0;
  while ((irb =
   call_fext_func(FUNC_BUTTONS, 0x1, 0x0, 0x0)) != 0
    && (i++) < MAX_HOTKEY_RINGBUFFER_SIZE) {
   switch (irb & 0x4ff) {
   case 131:
    keycode = fujitsu->keycode1;
    break;
   case 130:
    keycode = fujitsu->keycode2;
    break;
   case 129:
    keycode = fujitsu->keycode3;
    break;
   case 128:
    keycode = fujitsu->keycode4;
    break;
   case 0:
    keycode = 0;
    break;
   default:
    vdbg_printk(FUJLAPTOP_DBG_WARN,
         "Unknown GIRB result [%x]\n", irb);
    keycode = -1;
    break;
   }
   if (keycode > 0) {
    vdbg_printk(FUJLAPTOP_DBG_TRACE,
     "Push keycode into ringbuffer [%d]\n",
     keycode);
    status = kfifo_put(fujitsu_hotkey->fifo,
         (unsigned char *)&keycode,
         sizeof(keycode));
    if (status != sizeof(keycode)) {
     vdbg_printk(FUJLAPTOP_DBG_WARN,
         "Could not push keycode [0x%x]\n",
         keycode);
    } else {
     input_report_key(input, keycode, 1);
     input_sync(input);
    }
   } else if (keycode == 0) {
    while ((status =
     kfifo_get
     (fujitsu_hotkey->fifo, (unsigned char *)
      &keycode_r,
      sizeof
      (keycode_r))) == sizeof(keycode_r)) {
     input_report_key(input, keycode_r, 0);
     input_sync(input);
     vdbg_printk(FUJLAPTOP_DBG_TRACE,
       "Pop keycode from ringbuffer [%d]\n",
       keycode_r);
    }
   }
  }

  break;
 default:
  keycode = KEY_UNKNOWN;
  vdbg_printk(FUJLAPTOP_DBG_WARN,
       "Unsupported event [0x%x]\n", event);
  input_report_key(input, keycode, 1);
  input_sync(input);
  input_report_key(input, keycode, 0);
  input_sync(input);
  break;
 }
}
