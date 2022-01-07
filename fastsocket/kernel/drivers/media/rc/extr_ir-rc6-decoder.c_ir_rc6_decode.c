
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct rc_dev {TYPE_1__* raw; } ;
struct rc6_dec {int state; int header; int toggle; int body; int wanted_bits; int count; } ;
struct ir_raw_event {int pulse; int duration; scalar_t__ reset; } ;
struct TYPE_2__ {int enabled_protocols; int prev_ev; struct rc6_dec rc6; } ;


 int EINVAL ;
 int IR_dprintk (int,char*,...) ;
 int RC6_0_NBITS ;
 int RC6_6A_LARGE_NBITS ;
 int RC6_6A_MCE_TOGGLE_MASK ;
 int RC6_6A_SMALL_NBITS ;
 int RC6_BIT_END ;
 int RC6_BIT_START ;
 int RC6_HEADER_NBITS ;


 int RC6_PREFIX_PULSE ;
 int RC6_PREFIX_SPACE ;
 int RC6_STARTBIT_MASK ;
 int RC6_TOGGLE_END ;
 int RC6_TOGGLE_START ;
 int RC6_UNIT ;
 int RC_TYPE_RC6 ;
 int TO_STR (int) ;
 int TO_US (int ) ;
 int decrease_duration (struct ir_raw_event*,int) ;
 int eq_margin (int ,int ,int) ;
 scalar_t__ geq_margin (int ,int,int) ;
 int is_timing_event (struct ir_raw_event) ;
 int is_transition (struct ir_raw_event*,int *) ;
 int rc6_mode (struct rc6_dec*) ;
 int rc_keydown (struct rc_dev*,int,int) ;

__attribute__((used)) static int ir_rc6_decode(struct rc_dev *dev, struct ir_raw_event ev)
{
 struct rc6_dec *data = &dev->raw->rc6;
 u32 scancode;
 u8 toggle;

 if (!(dev->raw->enabled_protocols & RC_TYPE_RC6))
  return 0;

 if (!is_timing_event(ev)) {
  if (ev.reset)
   data->state = 131;
  return 0;
 }

 if (!geq_margin(ev.duration, RC6_UNIT, RC6_UNIT / 2))
  goto out;

again:
 IR_dprintk(2, "RC6 decode started at state %i (%uus %s)\n",
     data->state, TO_US(ev.duration), TO_STR(ev.pulse));

 if (!geq_margin(ev.duration, RC6_UNIT, RC6_UNIT / 2))
  return 0;

 switch (data->state) {

 case 131:
  if (!ev.pulse)
   break;




  if (!eq_margin(ev.duration, RC6_PREFIX_PULSE, RC6_UNIT))
   break;

  data->state = 130;
  data->count = 0;
  return 0;

 case 130:
  if (ev.pulse)
   break;

  if (!eq_margin(ev.duration, RC6_PREFIX_SPACE, RC6_UNIT / 2))
   break;

  data->state = 132;
  return 0;

 case 132:
  if (!eq_margin(ev.duration, RC6_BIT_START, RC6_UNIT / 2))
   break;

  data->header <<= 1;
  if (ev.pulse)
   data->header |= 1;
  data->count++;
  data->state = 133;
  return 0;

 case 133:
  if (!is_transition(&ev, &dev->raw->prev_ev))
   break;

  if (data->count == RC6_HEADER_NBITS)
   data->state = 128;
  else
   data->state = 132;

  decrease_duration(&ev, RC6_BIT_END);
  goto again;

 case 128:
  if (!eq_margin(ev.duration, RC6_TOGGLE_START, RC6_UNIT / 2))
   break;

  data->toggle = ev.pulse;
  data->state = 129;
  return 0;

 case 129:
  if (!is_transition(&ev, &dev->raw->prev_ev) ||
      !geq_margin(ev.duration, RC6_TOGGLE_END, RC6_UNIT / 2))
   break;

  if (!(data->header & RC6_STARTBIT_MASK)) {
   IR_dprintk(1, "RC6 invalid start bit\n");
   break;
  }

  data->state = 135;
  decrease_duration(&ev, RC6_TOGGLE_END);
  data->count = 0;

  switch (rc6_mode(data)) {
  case 138:
   data->wanted_bits = RC6_0_NBITS;
   break;
  case 137:



   if ((!ev.pulse && !geq_margin(ev.duration, RC6_UNIT, RC6_UNIT / 2)) ||
       geq_margin(ev.duration, RC6_UNIT, RC6_UNIT / 2))
    data->wanted_bits = RC6_6A_LARGE_NBITS;
   else
    data->wanted_bits = RC6_6A_SMALL_NBITS;
   break;
  default:
   IR_dprintk(1, "RC6 unknown mode\n");
   goto out;
  }
  goto again;

 case 135:
  if (!eq_margin(ev.duration, RC6_BIT_START, RC6_UNIT / 2))
   break;

  data->body <<= 1;
  if (ev.pulse)
   data->body |= 1;
  data->count++;
  data->state = 136;
  return 0;

 case 136:
  if (!is_transition(&ev, &dev->raw->prev_ev))
   break;

  if (data->count == data->wanted_bits)
   data->state = 134;
  else
   data->state = 135;

  decrease_duration(&ev, RC6_BIT_END);
  goto again;

 case 134:
  if (ev.pulse)
   break;

  switch (rc6_mode(data)) {
  case 138:
   scancode = data->body & 0xffff;
   toggle = data->toggle;
   IR_dprintk(1, "RC6(0) scancode 0x%04x (toggle: %u)\n",
       scancode, toggle);
   break;
  case 137:
   if (data->wanted_bits == RC6_6A_LARGE_NBITS) {
    toggle = data->body & RC6_6A_MCE_TOGGLE_MASK ? 1 : 0;
    scancode = data->body & ~RC6_6A_MCE_TOGGLE_MASK;
   } else {
    toggle = 0;
    scancode = data->body & 0xffffff;
   }

   IR_dprintk(1, "RC6(6A) scancode 0x%08x (toggle: %u)\n",
       scancode, toggle);
   break;
  default:
   IR_dprintk(1, "RC6 unknown mode\n");
   goto out;
  }

  rc_keydown(dev, scancode, toggle);
  data->state = 131;
  return 0;
 }

out:
 IR_dprintk(1, "RC6 decode failed at state %i (%uus %s)\n",
     data->state, TO_US(ev.duration), TO_STR(ev.pulse));
 data->state = 131;
 return -EINVAL;
}
