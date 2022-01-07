
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ microsoft_gen1; } ;
struct mceusb_dev {int parser_state; int rem; int cmd; int* buf_in; int rc; int dev; TYPE_1__ flags; } ;
struct TYPE_7__ {int pulse; int duration; } ;




 int DEFINE_IR_RAW_EVENT (TYPE_2__) ;
 int MCE_COMMAND_HEADER ;
 int MCE_COMMAND_IRDATA ;
 int MCE_COMMAND_MASK ;
 int MCE_PACKET_LENGTH_MASK ;
 int MCE_PULSE_BIT ;
 int MCE_PULSE_MASK ;
 int MCE_TIME_UNIT ;


 int US_TO_NS (int ) ;
 int dev_dbg (int ,char*,...) ;
 int init_ir_raw_event (TYPE_2__*) ;
 int ir_raw_event_handle (int ) ;
 int ir_raw_event_reset (int ) ;
 int ir_raw_event_store_with_filter (int ,TYPE_2__*) ;
 int mceusb_cmdsize (int,int) ;
 int mceusb_dev_printdata (struct mceusb_dev*,int*,int,int,int) ;
 int mceusb_handle_command (struct mceusb_dev*,int) ;
 TYPE_2__ rawir ;

__attribute__((used)) static void mceusb_process_ir_data(struct mceusb_dev *ir, int buf_len)
{
 DEFINE_IR_RAW_EVENT(rawir);
 int i = 0;


 if (ir->flags.microsoft_gen1)
  i = 2;


 if (buf_len <= i)
  return;

 for (; i < buf_len; i++) {
  switch (ir->parser_state) {
  case 128:
   ir->rem = mceusb_cmdsize(ir->cmd, ir->buf_in[i]);
   mceusb_dev_printdata(ir, ir->buf_in, i - 1,
          ir->rem + 2, 0);
   mceusb_handle_command(ir, i);
   ir->parser_state = 131;
   break;
  case 129:
   ir->rem--;
   init_ir_raw_event(&rawir);
   rawir.pulse = ((ir->buf_in[i] & MCE_PULSE_BIT) != 0);
   rawir.duration = (ir->buf_in[i] & MCE_PULSE_MASK)
      * US_TO_NS(MCE_TIME_UNIT);

   dev_dbg(ir->dev, "Storing %s with duration %d\n",
    rawir.pulse ? "pulse" : "space",
    rawir.duration);

   ir_raw_event_store_with_filter(ir->rc, &rawir);
   break;
  case 131:
   ir->rem--;
   break;
  case 130:


   ir->cmd = ir->buf_in[i];
   if ((ir->cmd == MCE_COMMAND_HEADER) ||
       ((ir->cmd & MCE_COMMAND_MASK) !=
        MCE_COMMAND_IRDATA)) {
    ir->parser_state = 128;
    continue;
   }
   ir->rem = (ir->cmd & MCE_PACKET_LENGTH_MASK);
   mceusb_dev_printdata(ir, ir->buf_in,
          i, ir->rem + 1, 0);
   if (ir->rem)
    ir->parser_state = 129;
   else
    ir_raw_event_reset(ir->rc);
   break;
  }

  if (ir->parser_state != 130 && !ir->rem)
   ir->parser_state = 130;
 }
 dev_dbg(ir->dev, "processed IR data, calling ir_raw_event_handle\n");
 ir_raw_event_handle(ir->rc);
}
