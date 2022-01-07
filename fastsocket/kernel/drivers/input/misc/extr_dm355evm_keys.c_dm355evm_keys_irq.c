
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct dm355evm_keys {int input; int dev; } ;
typedef int irqreturn_t ;
struct TYPE_3__ {int event; int keycode; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int DM355EVM_MSP_INPUT_HIGH ;
 int DM355EVM_MSP_INPUT_LOW ;
 int IRQ_HANDLED ;
 int KEY_UNKNOWN ;
 int dev_dbg (int ,char*,int,...) ;
 TYPE_1__* dm355evm_keys ;
 int dm355evm_msp_read (int ) ;
 int input_report_key (int ,int,int) ;
 int input_sync (int ) ;

__attribute__((used)) static irqreturn_t dm355evm_keys_irq(int irq, void *_keys)
{
 struct dm355evm_keys *keys = _keys;
 int status;





 for (;;) {
  static u16 last_event;
  u16 event;
  int keycode;
  int i;

  status = dm355evm_msp_read(DM355EVM_MSP_INPUT_HIGH);
  if (status < 0) {
   dev_dbg(keys->dev, "input high err %d\n",
     status);
   break;
  }
  event = status << 8;

  status = dm355evm_msp_read(DM355EVM_MSP_INPUT_LOW);
  if (status < 0) {
   dev_dbg(keys->dev, "input low err %d\n",
     status);
   break;
  }
  event |= status;
  if (event == 0xdead)
   break;
  if (event == last_event) {
   last_event = 0;
   continue;
  }
  last_event = event;


  event &= ~0x0800;


  keycode = KEY_UNKNOWN;
  for (i = 0; i < ARRAY_SIZE(dm355evm_keys); i++) {
   if (dm355evm_keys[i].event != event)
    continue;
   keycode = dm355evm_keys[i].keycode;
   break;
  }
  dev_dbg(keys->dev,
   "input event 0x%04x--> keycode %d\n",
   event, keycode);


  input_report_key(keys->input, keycode, 1);
  input_sync(keys->input);
  input_report_key(keys->input, keycode, 0);
  input_sync(keys->input);
 }
 return IRQ_HANDLED;
}
