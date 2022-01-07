
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wacom_wac {unsigned char* data; scalar_t__* tool; unsigned char* id; int* serial; TYPE_1__* features; } ;
struct TYPE_2__ {scalar_t__ type; } ;


 int ABS_DISTANCE ;
 int ABS_MISC ;
 int ABS_RX ;
 int ABS_RY ;
 int ABS_RZ ;
 int ABS_THROTTLE ;
 int ABS_TILT_X ;
 int ABS_TILT_Y ;
 int ABS_WHEEL ;
 int ABS_X ;
 int ABS_Y ;
 int ABS_Z ;
 scalar_t__ BTN_0 ;
 scalar_t__ BTN_1 ;
 scalar_t__ BTN_2 ;
 scalar_t__ BTN_3 ;
 scalar_t__ BTN_4 ;
 scalar_t__ BTN_5 ;
 scalar_t__ BTN_6 ;
 scalar_t__ BTN_7 ;
 scalar_t__ BTN_8 ;
 scalar_t__ BTN_9 ;
 scalar_t__ BTN_A ;
 scalar_t__ BTN_B ;
 scalar_t__ BTN_BASE ;
 scalar_t__ BTN_BASE2 ;
 scalar_t__ BTN_C ;
 scalar_t__ BTN_EXTRA ;
 scalar_t__ BTN_LEFT ;
 scalar_t__ BTN_MIDDLE ;
 scalar_t__ BTN_RIGHT ;
 scalar_t__ BTN_SIDE ;
 scalar_t__ BTN_TOOL_FINGER ;
 scalar_t__ BTN_TOOL_LENS ;
 scalar_t__ BTN_TOOL_MOUSE ;
 scalar_t__ BTN_X ;
 scalar_t__ BTN_Y ;
 scalar_t__ BTN_Z ;
 scalar_t__ CINTIQ ;
 int EV_MSC ;
 scalar_t__ INTUOS ;
 scalar_t__ INTUOS3 ;
 scalar_t__ INTUOS3L ;
 scalar_t__ INTUOS3S ;
 scalar_t__ INTUOS4 ;
 scalar_t__ INTUOS4L ;
 scalar_t__ INTUOS4S ;
 scalar_t__ INTUOS5 ;
 scalar_t__ INTUOS5L ;
 scalar_t__ INTUOS5S ;
 scalar_t__ KEY_PROG1 ;
 scalar_t__ KEY_PROG2 ;
 scalar_t__ KEY_PROG3 ;
 int MSC_SERIAL ;
 unsigned char PAD_DEVICE_ID ;
 int REL_WHEEL ;
 scalar_t__ WACOM_21UX2 ;
 scalar_t__ WACOM_22HD ;
 scalar_t__ WACOM_24HD ;
 int dbg (char*,unsigned char) ;
 unsigned char wacom_be16_to_cpu (unsigned char*) ;
 int wacom_input_event (void*,int ,int ,int) ;
 int wacom_intuos_general (struct wacom_wac*,void*) ;
 int wacom_intuos_inout (struct wacom_wac*,void*) ;
 int wacom_report_abs (void*,int ,unsigned char) ;
 int wacom_report_key (void*,scalar_t__,int) ;
 int wacom_report_rel (void*,int ,unsigned char) ;

__attribute__((used)) static int wacom_intuos_irq(struct wacom_wac *wacom, void *wcombo)
{
 unsigned char *data = wacom->data;
 unsigned int t;
 int idx = 0, result;

 if (data[0] != 2 && data[0] != 3 && data[0] != 5 && data[0] != 6 && data[0] != 12) {
  dbg("wacom_intuos_irq: received unknown report #%d", data[0]);
                return 0;
 }


 if (wacom->features->type == INTUOS)
  idx = data[1] & 0x01;


 if (data[0] == 12 || data[0] == 3) {

  if (wacom->tool[1] != BTN_TOOL_FINGER)
   wacom->tool[1] = BTN_TOOL_FINGER;

  if (wacom->features->type >= INTUOS4S && wacom->features->type <= INTUOS4L) {
   wacom_report_key(wcombo, BTN_0, (data[2] & 0x01));
   wacom_report_key(wcombo, BTN_1, (data[3] & 0x01));
   wacom_report_key(wcombo, BTN_2, (data[3] & 0x02));
   wacom_report_key(wcombo, BTN_3, (data[3] & 0x04));
   wacom_report_key(wcombo, BTN_4, (data[3] & 0x08));
   wacom_report_key(wcombo, BTN_5, (data[3] & 0x10));
   wacom_report_key(wcombo, BTN_6, (data[3] & 0x20));
   if (data[1] & 0x80) {
    wacom_report_abs(wcombo, ABS_WHEEL, (data[1] & 0x7f));
   } else {

    wacom_report_abs(wcombo, ABS_WHEEL, 0);
   }
   if (wacom->features->type != INTUOS4S) {
    wacom_report_key(wcombo, BTN_7, (data[3] & 0x40));
    wacom_report_key(wcombo, BTN_8, (data[3] & 0x80));
   }
   if (data[1] | (data[2] & 0x01) | data[3]) {
    wacom_report_key(wcombo, wacom->tool[1], 1);
    wacom_report_abs(wcombo, ABS_MISC, PAD_DEVICE_ID);
   } else {
    wacom_report_key(wcombo, wacom->tool[1], 0);
    wacom_report_abs(wcombo, ABS_MISC, 0);
   }
  } else if (wacom->features->type == WACOM_24HD) {
   wacom_report_key(wcombo, BTN_0, (data[6] & 0x01));
   wacom_report_key(wcombo, BTN_1, (data[6] & 0x02));
   wacom_report_key(wcombo, BTN_2, (data[6] & 0x04));
   wacom_report_key(wcombo, BTN_3, (data[6] & 0x08));
   wacom_report_key(wcombo, BTN_4, (data[6] & 0x10));
   wacom_report_key(wcombo, BTN_5, (data[6] & 0x20));
   wacom_report_key(wcombo, BTN_6, (data[6] & 0x40));
   wacom_report_key(wcombo, BTN_7, (data[6] & 0x80));
   wacom_report_key(wcombo, BTN_8, (data[8] & 0x01));
   wacom_report_key(wcombo, BTN_9, (data[8] & 0x02));
   wacom_report_key(wcombo, BTN_A, (data[8] & 0x04));
   wacom_report_key(wcombo, BTN_B, (data[8] & 0x08));
   wacom_report_key(wcombo, BTN_C, (data[8] & 0x10));
   wacom_report_key(wcombo, BTN_X, (data[8] & 0x20));
   wacom_report_key(wcombo, BTN_Y, (data[8] & 0x40));
   wacom_report_key(wcombo, BTN_Z, (data[8] & 0x80));
   wacom_report_key(wcombo, KEY_PROG1, data[4] & 0x07);
   wacom_report_key(wcombo, KEY_PROG2, data[4] & 0xE0);
   wacom_report_key(wcombo, KEY_PROG3, data[3] & 0x1C);

   if (data[1] & 0x80) {
    wacom_report_abs(wcombo, ABS_WHEEL, (data[1] & 0x7f));
   } else {

    wacom_report_abs(wcombo, ABS_WHEEL, 0);
   }

   if (data[2] & 0x80) {
    wacom_report_abs(wcombo, ABS_THROTTLE, (data[2] & 0x7f));
   } else {

    wacom_report_abs(wcombo, ABS_THROTTLE, 0);
   }

   if (data[1] | data[2] | (data[3] & 0x1f) | data[4] | data[6] | data[8]) {
    wacom_report_key(wcombo, wacom->tool[1], 1);
    wacom_report_abs(wcombo, ABS_MISC, PAD_DEVICE_ID);
   } else {
    wacom_report_key(wcombo, wacom->tool[1], 0);
    wacom_report_abs(wcombo, ABS_MISC, 0);
   }
  } else if (wacom->features->type >= INTUOS5S && wacom->features->type <= INTUOS5L) {
   int i;


   wacom_report_key(wcombo, BTN_0, (data[3] & 0x01));






   for (i = 0; i < 8; i++)
    wacom_report_key(wcombo, BTN_1 + i, data[4] & (1 << i));

   if (data[2] & 0x80) {
    wacom_report_abs(wcombo, ABS_WHEEL, (data[2] & 0x7f));
   } else {

    wacom_report_abs(wcombo, ABS_WHEEL, 0);
   }

   if (data[2] | (data[3] & 0x01) | data[4]) {
    wacom_report_key(wcombo, wacom->tool[1], 1);
    wacom_report_abs(wcombo, ABS_MISC, PAD_DEVICE_ID);
   } else {
    wacom_report_key(wcombo, wacom->tool[1], 0);
    wacom_report_abs(wcombo, ABS_MISC, 0);
   }
  } else {
   if (wacom->features->type == WACOM_21UX2 ||
       wacom->features->type == WACOM_22HD) {
    wacom_report_key(wcombo, BTN_0, (data[5] & 0x01));
    wacom_report_key(wcombo, BTN_1, (data[6] & 0x01));
    wacom_report_key(wcombo, BTN_2, (data[6] & 0x02));
    wacom_report_key(wcombo, BTN_3, (data[6] & 0x04));
    wacom_report_key(wcombo, BTN_4, (data[6] & 0x08));
    wacom_report_key(wcombo, BTN_5, (data[6] & 0x10));
    wacom_report_key(wcombo, BTN_6, (data[6] & 0x20));
    wacom_report_key(wcombo, BTN_7, (data[6] & 0x40));
    wacom_report_key(wcombo, BTN_8, (data[6] & 0x80));
    wacom_report_key(wcombo, BTN_9, (data[7] & 0x01));
    wacom_report_key(wcombo, BTN_A, (data[8] & 0x01));
    wacom_report_key(wcombo, BTN_B, (data[8] & 0x02));
    wacom_report_key(wcombo, BTN_C, (data[8] & 0x04));
    wacom_report_key(wcombo, BTN_X, (data[8] & 0x08));
    wacom_report_key(wcombo, BTN_Y, (data[8] & 0x10));
    wacom_report_key(wcombo, BTN_Z, (data[8] & 0x20));
    wacom_report_key(wcombo, BTN_BASE, (data[8] & 0x40));
    wacom_report_key(wcombo, BTN_BASE2, (data[8] & 0x80));
    if (wacom->features->type == WACOM_22HD) {
     wacom_report_key(wcombo, KEY_PROG1, data[9] & 0x01);
     wacom_report_key(wcombo, KEY_PROG2, data[9] & 0x02);
     wacom_report_key(wcombo, KEY_PROG3, data[9] & 0x04);
    }
   } else {
    wacom_report_key(wcombo, BTN_0, (data[5] & 0x01));
    wacom_report_key(wcombo, BTN_1, (data[5] & 0x02));
    wacom_report_key(wcombo, BTN_2, (data[5] & 0x04));
    wacom_report_key(wcombo, BTN_3, (data[5] & 0x08));
    wacom_report_key(wcombo, BTN_4, (data[6] & 0x01));
    wacom_report_key(wcombo, BTN_5, (data[6] & 0x02));
    wacom_report_key(wcombo, BTN_6, (data[6] & 0x04));
    wacom_report_key(wcombo, BTN_7, (data[6] & 0x08));
    wacom_report_key(wcombo, BTN_8, (data[5] & 0x10));
    wacom_report_key(wcombo, BTN_9, (data[6] & 0x10));
   }
   wacom_report_abs(wcombo, ABS_RX, ((data[1] & 0x1f) << 8) | data[2]);
   wacom_report_abs(wcombo, ABS_RY, ((data[3] & 0x1f) << 8) | data[4]);

   if ((data[5] & 0x1f) | data[6] | (data[1] & 0x1f) |
    data[2] | (data[3] & 0x1f) | data[4] | data[8] |
    (data[7] & 0x01)) {
    wacom_report_key(wcombo, wacom->tool[1], 1);
    wacom_report_abs(wcombo, ABS_MISC, PAD_DEVICE_ID);
   } else {
    wacom_report_key(wcombo, wacom->tool[1], 0);
    wacom_report_abs(wcombo, ABS_MISC, 0);
   }
  }
  wacom_input_event(wcombo, EV_MSC, MSC_SERIAL, 0xffffffff);
                return 1;
 }


 result = wacom_intuos_inout(wacom, wcombo);
 if (result)
                return result-1;


 if (!wacom->id[idx])
  return 0;


 if ((wacom->tool[idx] == BTN_TOOL_LENS)
   && ((wacom->features->type == INTUOS3)
   || (wacom->features->type == INTUOS3S)
   || (wacom->features->type == INTUOS4)
   || (wacom->features->type == INTUOS4S)
   || (wacom->features->type == INTUOS5)
   || (wacom->features->type == INTUOS5S)))
  return 0;


 if ((wacom->features->type == CINTIQ) && !(data[1] & 0x40))
                 return 0;

 if (wacom->features->type >= INTUOS3S) {
  wacom_report_abs(wcombo, ABS_X, (data[2] << 9) | (data[3] << 1) | ((data[9] >> 1) & 1));
  wacom_report_abs(wcombo, ABS_Y, (data[4] << 9) | (data[5] << 1) | (data[9] & 1));
  wacom_report_abs(wcombo, ABS_DISTANCE, ((data[9] >> 2) & 0x3f));
 } else {
  wacom_report_abs(wcombo, ABS_X, wacom_be16_to_cpu(&data[2]));
  wacom_report_abs(wcombo, ABS_Y, wacom_be16_to_cpu(&data[4]));
  wacom_report_abs(wcombo, ABS_DISTANCE, ((data[9] >> 3) & 0x1f));
 }


 wacom_intuos_general(wacom, wcombo);


 if ((data[1] & 0xbc) == 0xa8 || (data[1] & 0xbe) == 0xb0 || (data[1] & 0xbc) == 0xac) {

  if (data[1] & 0x02) {

   if (wacom->features->type >= INTUOS3S) {

    t = (data[6] << 3) | ((data[7] >> 5) & 7);
    t = (data[7] & 0x20) ? ((t > 900) ? ((t-1) / 2 - 1350) :
     ((t-1) / 2 + 450)) : (450 - t / 2) ;
    wacom_report_abs(wcombo, ABS_Z, t);
   } else {

    t = (data[6] << 3) | ((data[7] >> 5) & 7);
    wacom_report_abs(wcombo, ABS_RZ, (data[7] & 0x20) ?
     ((t - 1) / 2) : -t / 2);
   }

  } else if (!(data[1] & 0x10) && wacom->features->type < INTUOS3S) {

   wacom_report_key(wcombo, BTN_LEFT, data[8] & 0x01);
   wacom_report_key(wcombo, BTN_MIDDLE, data[8] & 0x02);
   wacom_report_key(wcombo, BTN_RIGHT, data[8] & 0x04);

   wacom_report_key(wcombo, BTN_SIDE, data[8] & 0x20);
   wacom_report_key(wcombo, BTN_EXTRA, data[8] & 0x10);
   t = (data[6] << 2) | ((data[7] >> 6) & 3);
   wacom_report_abs(wcombo, ABS_THROTTLE, (data[8] & 0x08) ? -t : t);

  } else if (wacom->tool[idx] == BTN_TOOL_MOUSE) {

   if ((wacom->features->type >= INTUOS4S && wacom->features->type <= INTUOS4L) ||
       (wacom->features->type >= INTUOS5S && wacom->features->type <= INTUOS5L)) {
    wacom_report_key(wcombo, BTN_LEFT, data[6] & 0x01);
    wacom_report_key(wcombo, BTN_MIDDLE, data[6] & 0x02);
    wacom_report_key(wcombo, BTN_RIGHT, data[6] & 0x04);
    wacom_report_rel(wcombo, REL_WHEEL, ((data[7] & 0x80) >> 7)
       - ((data[7] & 0x40) >> 6));
    wacom_report_key(wcombo, BTN_SIDE, data[6] & 0x08);
    wacom_report_key(wcombo, BTN_EXTRA, data[6] & 0x10);

    wacom_report_abs(wcombo, ABS_TILT_X,
     ((data[7] << 1) & 0x7e) | (data[8] >> 7));
    wacom_report_abs(wcombo, ABS_TILT_Y, data[8] & 0x7f);
   } else {

    wacom_report_key(wcombo, BTN_LEFT, data[8] & 0x04);
    wacom_report_key(wcombo, BTN_MIDDLE, data[8] & 0x08);
    wacom_report_key(wcombo, BTN_RIGHT, data[8] & 0x10);
    wacom_report_rel(wcombo, REL_WHEEL, (data[8] & 0x01)
       - ((data[8] & 0x02) >> 1));


    if (wacom->features->type >= INTUOS3S && wacom->features->type <= INTUOS3L) {
     wacom_report_key(wcombo, BTN_SIDE, data[8] & 0x40);
     wacom_report_key(wcombo, BTN_EXTRA, data[8] & 0x20);
    }
   }
  } else if ((wacom->features->type < INTUOS3S || wacom->features->type == INTUOS3L ||
      wacom->features->type == INTUOS4L || wacom->features->type == INTUOS5L) &&
      wacom->tool[idx] == BTN_TOOL_LENS) {

   wacom_report_key(wcombo, BTN_LEFT, data[8] & 0x01);
   wacom_report_key(wcombo, BTN_MIDDLE, data[8] & 0x02);
   wacom_report_key(wcombo, BTN_RIGHT, data[8] & 0x04);
   wacom_report_key(wcombo, BTN_SIDE, data[8] & 0x10);
   wacom_report_key(wcombo, BTN_EXTRA, data[8] & 0x08);
  }
 }

 wacom_report_abs(wcombo, ABS_MISC, wacom->id[idx]);
 wacom_report_key(wcombo, wacom->tool[idx], 1);
 wacom_input_event(wcombo, EV_MSC, MSC_SERIAL, wacom->serial[idx]);
 return 1;
}
