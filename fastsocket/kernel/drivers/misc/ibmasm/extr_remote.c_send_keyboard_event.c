
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned short key_code; int key_down; } ;
struct TYPE_4__ {TYPE_1__ keyboard; } ;
struct remote_input {TYPE_2__ data; } ;
struct input_dev {int dummy; } ;


 int input_report_key (struct input_dev*,unsigned int,int ) ;
 int input_sync (struct input_dev*) ;
 unsigned int* xlate ;
 unsigned int* xlate_high ;

__attribute__((used)) static void send_keyboard_event(struct input_dev *dev,
  struct remote_input *input)
{
 unsigned int key;
 unsigned short code = input->data.keyboard.key_code;

 if (code & 0xff00)
  key = xlate_high[code & 0xff];
 else
  key = xlate[code];
 input_report_key(dev, key, input->data.keyboard.key_down);
 input_sync(dev);
}
