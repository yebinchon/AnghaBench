
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wacom_wac {unsigned char* data; int* id; void** tool; TYPE_1__* features; } ;
struct TYPE_2__ {int pressure_max; } ;


 int ABS_MISC ;
 int ABS_PRESSURE ;
 int ABS_X ;
 int ABS_Y ;
 void* BTN_STYLUS ;
 void* BTN_STYLUS2 ;
 void* BTN_TOOL_PEN ;
 void* BTN_TOOL_RUBBER ;
 void* BTN_TOUCH ;
 int ERASER_DEVICE_ID ;
 int STYLUS_DEVICE_ID ;
 int dbg (char*,unsigned char) ;
 int wacom_input_sync (void*) ;
 int wacom_report_abs (void*,int ,int) ;
 int wacom_report_key (void*,void*,int) ;

__attribute__((used)) static int wacom_pl_irq(struct wacom_wac *wacom, void *wcombo)
{
 unsigned char *data = wacom->data;
 int prox, pressure;

 if (data[0] != 2) {
  dbg("wacom_pl_irq: received unknown report #%d", data[0]);
  return 0;
 }

 prox = data[1] & 0x40;

 if (prox) {
  wacom->id[0] = ERASER_DEVICE_ID;
  pressure = (signed char)((data[7] << 1) | ((data[4] >> 2) & 1));
  if (wacom->features->pressure_max > 255)
   pressure = (pressure << 1) | ((data[4] >> 6) & 1);
  pressure += (wacom->features->pressure_max + 1) / 2;







  if (!wacom->tool[0]) {

   if (data[1] & 0x10)
    wacom->tool[1] = BTN_TOOL_RUBBER;
   else

    wacom->tool[1] = (data[4] & 0x20) ? BTN_TOOL_RUBBER : BTN_TOOL_PEN;
  } else {

   if (wacom->tool[1] == BTN_TOOL_RUBBER && !(data[4] & 0x20)) {

    wacom_report_key(wcombo, wacom->tool[1], 0);
    wacom_input_sync(wcombo);
    wacom->tool[1] = BTN_TOOL_PEN;
    return 0;
   }
  }
  if (wacom->tool[1] != BTN_TOOL_RUBBER) {

   wacom->tool[1] = BTN_TOOL_PEN;
   wacom->id[0] = STYLUS_DEVICE_ID;
  }
  wacom_report_key(wcombo, wacom->tool[1], prox);
  wacom_report_abs(wcombo, ABS_MISC, wacom->id[0]);
  wacom_report_abs(wcombo, ABS_X, data[3] | (data[2] << 7) | ((data[1] & 0x03) << 14));
  wacom_report_abs(wcombo, ABS_Y, data[6] | (data[5] << 7) | ((data[4] & 0x03) << 14));
  wacom_report_abs(wcombo, ABS_PRESSURE, pressure);

  wacom_report_key(wcombo, BTN_TOUCH, data[4] & 0x08);
  wacom_report_key(wcombo, BTN_STYLUS, data[4] & 0x10);

  wacom_report_key(wcombo, BTN_STYLUS2, (wacom->tool[1] == BTN_TOOL_PEN) && (data[4] & 0x20));
 } else {

  if (wacom->tool[1] != BTN_TOOL_RUBBER) {

   wacom->tool[1] = BTN_TOOL_PEN;
  }
  wacom_report_key(wcombo, wacom->tool[1], prox);
 }

 wacom->tool[0] = prox;
 return 1;
}
