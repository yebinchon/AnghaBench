
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct max7359_keypad {int * keycodes; TYPE_1__* client; struct input_dev* input_dev; } ;
struct input_dev {int dummy; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int dev; } ;


 int EV_MSC ;
 int IRQ_HANDLED ;
 int MATRIX_SCAN_CODE (int,int,int ) ;
 int MAX7359_REG_KEYFIFO ;
 int MAX7359_ROW_SHIFT ;
 int MSC_SCAN ;
 int dev_dbg (int *,char*,int,int,char*) ;
 int input_event (struct input_dev*,int ,int ,int) ;
 int input_report_key (struct input_dev*,int ,int) ;
 int input_sync (struct input_dev*) ;
 int max7359_read_reg (TYPE_1__*,int ) ;

__attribute__((used)) static irqreturn_t max7359_interrupt(int irq, void *dev_id)
{
 struct max7359_keypad *keypad = dev_id;
 struct input_dev *input_dev = keypad->input_dev;
 int val, row, col, release, code;

 val = max7359_read_reg(keypad->client, MAX7359_REG_KEYFIFO);
 row = val & 0x7;
 col = (val >> 3) & 0x7;
 release = val & 0x40;

 code = MATRIX_SCAN_CODE(row, col, MAX7359_ROW_SHIFT);

 dev_dbg(&keypad->client->dev,
  "key[%d:%d] %s\n", row, col, release ? "release" : "press");

 input_event(input_dev, EV_MSC, MSC_SCAN, code);
 input_report_key(input_dev, keypad->keycodes[code], !release);
 input_sync(input_dev);

 return IRQ_HANDLED;
}
