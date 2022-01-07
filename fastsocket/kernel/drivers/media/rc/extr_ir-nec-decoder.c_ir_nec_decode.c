
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct rc_dev {int keypressed; TYPE_1__* raw; } ;
struct nec_dec {int state; int is_nec_x; int necx_repeat; int bits; int count; } ;
struct ir_raw_event {int pulse; int duration; scalar_t__ reset; } ;
struct TYPE_2__ {int enabled_protocols; struct nec_dec nec; } ;


 int EINVAL ;
 int IR_dprintk (int,char*,...) ;
 int NECX_HEADER_PULSE ;
 int NECX_REPEAT_BITS ;
 int NEC_BIT_0_SPACE ;
 int NEC_BIT_1_SPACE ;
 int NEC_BIT_PULSE ;
 int NEC_HEADER_PULSE ;
 int NEC_HEADER_SPACE ;
 int NEC_NBITS ;
 int NEC_REPEAT_SPACE ;
 int NEC_TRAILER_PULSE ;
 int NEC_TRAILER_SPACE ;
 int NEC_UNIT ;
 int RC_TYPE_NEC ;






 int TO_STR (int ) ;
 int TO_US (int ) ;
 int bitrev8 (int) ;
 int eq_margin (int ,int ,int) ;
 int geq_margin (int ,int ,int) ;
 int is_timing_event (struct ir_raw_event) ;
 int rc_keydown (struct rc_dev*,int,int ) ;
 int rc_repeat (struct rc_dev*) ;

__attribute__((used)) static int ir_nec_decode(struct rc_dev *dev, struct ir_raw_event ev)
{
 struct nec_dec *data = &dev->raw->nec;
 u32 scancode;
 u8 address, not_address, command, not_command;

 if (!(dev->raw->enabled_protocols & RC_TYPE_NEC))
  return 0;

 if (!is_timing_event(ev)) {
  if (ev.reset)
   data->state = 130;
  return 0;
 }

 IR_dprintk(2, "NEC decode started at state %d (%uus %s)\n",
     data->state, TO_US(ev.duration), TO_STR(ev.pulse));

 switch (data->state) {

 case 130:
  if (!ev.pulse)
   break;

  if (eq_margin(ev.duration, NEC_HEADER_PULSE, NEC_UNIT / 2)) {
   data->is_nec_x = 0;
   data->necx_repeat = 0;
  } else if (eq_margin(ev.duration, NECX_HEADER_PULSE, NEC_UNIT / 2))
   data->is_nec_x = 1;
  else
   break;

  data->count = 0;
  data->state = 131;
  return 0;

 case 131:
  if (ev.pulse)
   break;

  if (eq_margin(ev.duration, NEC_HEADER_SPACE, NEC_UNIT / 2)) {
   data->state = 133;
   return 0;
  } else if (eq_margin(ev.duration, NEC_REPEAT_SPACE, NEC_UNIT / 2)) {
   if (!dev->keypressed) {
    IR_dprintk(1, "Discarding last key repeat: event after key up\n");
   } else {
    rc_repeat(dev);
    IR_dprintk(1, "Repeat last key\n");
    data->state = 129;
   }
   return 0;
  }

  break;

 case 133:
  if (!ev.pulse)
   break;

  if (!eq_margin(ev.duration, NEC_BIT_PULSE, NEC_UNIT / 2))
   break;

  data->state = 132;
  return 0;

 case 132:
  if (ev.pulse)
   break;

  if (data->necx_repeat && data->count == NECX_REPEAT_BITS &&
   geq_margin(ev.duration,
   NEC_TRAILER_SPACE, NEC_UNIT / 2)) {
    IR_dprintk(1, "Repeat last key\n");
    rc_repeat(dev);
    data->state = 130;
    return 0;

  } else if (data->count > NECX_REPEAT_BITS)
   data->necx_repeat = 0;

  data->bits <<= 1;
  if (eq_margin(ev.duration, NEC_BIT_1_SPACE, NEC_UNIT / 2))
   data->bits |= 1;
  else if (!eq_margin(ev.duration, NEC_BIT_0_SPACE, NEC_UNIT / 2))
   break;
  data->count++;

  if (data->count == NEC_NBITS)
   data->state = 129;
  else
   data->state = 133;

  return 0;

 case 129:
  if (!ev.pulse)
   break;

  if (!eq_margin(ev.duration, NEC_TRAILER_PULSE, NEC_UNIT / 2))
   break;

  data->state = 128;
  return 0;

 case 128:
  if (ev.pulse)
   break;

  if (!geq_margin(ev.duration, NEC_TRAILER_SPACE, NEC_UNIT / 2))
   break;

  address = bitrev8((data->bits >> 24) & 0xff);
  not_address = bitrev8((data->bits >> 16) & 0xff);
  command = bitrev8((data->bits >> 8) & 0xff);
  not_command = bitrev8((data->bits >> 0) & 0xff);

  if ((command ^ not_command) != 0xff) {
   IR_dprintk(1, "NEC checksum error: received 0x%08x\n",
       data->bits);
   break;
  }

  if ((address ^ not_address) != 0xff) {

   scancode = address << 16 |
       not_address << 8 |
       command;
   IR_dprintk(1, "NEC (Ext) scancode 0x%06x\n", scancode);
  } else {

   scancode = address << 8 | command;
   IR_dprintk(1, "NEC scancode 0x%04x\n", scancode);
  }

  if (data->is_nec_x)
   data->necx_repeat = 1;

  rc_keydown(dev, scancode, 0);
  data->state = 130;
  return 0;
 }

 IR_dprintk(1, "NEC decode failed at state %d (%uus %s)\n",
     data->state, TO_US(ev.duration), TO_STR(ev.pulse));
 data->state = 130;
 return -EINVAL;
}
