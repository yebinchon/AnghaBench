
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct rc_dev {TYPE_1__* raw; } ;
struct jvc_dec {int state; int first; int toggle; int bits; int old_bits; int count; } ;
struct ir_raw_event {int pulse; int duration; scalar_t__ reset; } ;
struct TYPE_2__ {int enabled_protocols; struct jvc_dec jvc; } ;


 int EINVAL ;
 int IR_dprintk (int,char*,...) ;
 int JVC_BIT_0_SPACE ;
 int JVC_BIT_1_SPACE ;
 int JVC_BIT_PULSE ;
 int JVC_HEADER_PULSE ;
 int JVC_HEADER_SPACE ;
 int JVC_NBITS ;
 int JVC_TRAILER_PULSE ;
 int JVC_TRAILER_SPACE ;
 int JVC_UNIT ;
 int RC_TYPE_JVC ;







 int TO_STR (int ) ;
 int TO_US (int ) ;
 int bitrev8 (int) ;
 int decrease_duration (struct ir_raw_event*,int ) ;
 int eq_margin (int ,int ,int) ;
 int geq_margin (int ,int,int) ;
 int is_timing_event (struct ir_raw_event) ;
 int rc_keydown (struct rc_dev*,int,int) ;
 int rc_repeat (struct rc_dev*) ;

__attribute__((used)) static int ir_jvc_decode(struct rc_dev *dev, struct ir_raw_event ev)
{
 struct jvc_dec *data = &dev->raw->jvc;

 if (!(dev->raw->enabled_protocols & RC_TYPE_JVC))
  return 0;

 if (!is_timing_event(ev)) {
  if (ev.reset)
   data->state = 130;
  return 0;
 }

 if (!geq_margin(ev.duration, JVC_UNIT, JVC_UNIT / 2))
  goto out;

 IR_dprintk(2, "JVC decode started at state %d (%uus %s)\n",
     data->state, TO_US(ev.duration), TO_STR(ev.pulse));

again:
 switch (data->state) {

 case 130:
  if (!ev.pulse)
   break;

  if (!eq_margin(ev.duration, JVC_HEADER_PULSE, JVC_UNIT / 2))
   break;

  data->count = 0;
  data->first = 1;
  data->toggle = !data->toggle;
  data->state = 131;
  return 0;

 case 131:
  if (ev.pulse)
   break;

  if (!eq_margin(ev.duration, JVC_HEADER_SPACE, JVC_UNIT / 2))
   break;

  data->state = 134;
  return 0;

 case 134:
  if (!ev.pulse)
   break;

  if (!eq_margin(ev.duration, JVC_BIT_PULSE, JVC_UNIT / 2))
   break;

  data->state = 133;
  return 0;

 case 133:
  if (ev.pulse)
   break;

  data->bits <<= 1;
  if (eq_margin(ev.duration, JVC_BIT_1_SPACE, JVC_UNIT / 2)) {
   data->bits |= 1;
   decrease_duration(&ev, JVC_BIT_1_SPACE);
  } else if (eq_margin(ev.duration, JVC_BIT_0_SPACE, JVC_UNIT / 2))
   decrease_duration(&ev, JVC_BIT_0_SPACE);
  else
   break;
  data->count++;

  if (data->count == JVC_NBITS)
   data->state = 129;
  else
   data->state = 134;
  return 0;

 case 129:
  if (!ev.pulse)
   break;

  if (!eq_margin(ev.duration, JVC_TRAILER_PULSE, JVC_UNIT / 2))
   break;

  data->state = 128;
  return 0;

 case 128:
  if (ev.pulse)
   break;

  if (!geq_margin(ev.duration, JVC_TRAILER_SPACE, JVC_UNIT / 2))
   break;

  if (data->first) {
   u32 scancode;
   scancode = (bitrev8((data->bits >> 8) & 0xff) << 8) |
       (bitrev8((data->bits >> 0) & 0xff) << 0);
   IR_dprintk(1, "JVC scancode 0x%04x\n", scancode);
   rc_keydown(dev, scancode, data->toggle);
   data->first = 0;
   data->old_bits = data->bits;
  } else if (data->bits == data->old_bits) {
   IR_dprintk(1, "JVC repeat\n");
   rc_repeat(dev);
  } else {
   IR_dprintk(1, "JVC invalid repeat msg\n");
   break;
  }

  data->count = 0;
  data->state = 132;
  return 0;

 case 132:
  if (!ev.pulse)
   break;

  if (eq_margin(ev.duration, JVC_HEADER_PULSE, JVC_UNIT / 2))
   data->state = 130;
  else
   data->state = 134;
  goto again;
 }

out:
 IR_dprintk(1, "JVC decode failed at state %d (%uus %s)\n",
     data->state, TO_US(ev.duration), TO_STR(ev.pulse));
 data->state = 130;
 return -EINVAL;
}
