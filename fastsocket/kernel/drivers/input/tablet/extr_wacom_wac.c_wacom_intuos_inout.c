
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wacom_wac {unsigned char* data; unsigned char* serial; unsigned char* id; scalar_t__* tool; TYPE_1__* features; } ;
struct TYPE_2__ {scalar_t__ type; } ;


 int ABS_DISTANCE ;
 int ABS_MISC ;
 int ABS_PRESSURE ;
 int ABS_RZ ;
 int ABS_THROTTLE ;
 int ABS_TILT_X ;
 int ABS_TILT_Y ;
 int ABS_WHEEL ;
 int ABS_X ;
 int ABS_Y ;
 int ABS_Z ;
 scalar_t__ BTN_EXTRA ;
 scalar_t__ BTN_LEFT ;
 scalar_t__ BTN_MIDDLE ;
 scalar_t__ BTN_RIGHT ;
 scalar_t__ BTN_SIDE ;
 scalar_t__ BTN_STYLUS ;
 scalar_t__ BTN_STYLUS2 ;
 scalar_t__ BTN_TOOL_AIRBRUSH ;
 scalar_t__ BTN_TOOL_BRUSH ;
 scalar_t__ BTN_TOOL_LENS ;
 scalar_t__ BTN_TOOL_MOUSE ;
 void* BTN_TOOL_PEN ;
 scalar_t__ BTN_TOOL_PENCIL ;
 scalar_t__ BTN_TOOL_RUBBER ;
 scalar_t__ BTN_TOUCH ;
 int EV_MSC ;
 scalar_t__ INTUOS ;
 scalar_t__ INTUOS3S ;
 int MSC_SERIAL ;
 scalar_t__ WACOM_21UX2 ;
 scalar_t__ WACOM_24HD ;
 int wacom_input_event (void*,int ,int ,unsigned char) ;
 int wacom_report_abs (void*,int ,int ) ;
 int wacom_report_key (void*,scalar_t__,int ) ;

__attribute__((used)) static int wacom_intuos_inout(struct wacom_wac *wacom, void *wcombo)
{
 unsigned char *data = wacom->data;
 int idx = 0;


 if (wacom->features->type == INTUOS)
  idx = data[1] & 0x01;


 if ((data[1] & 0xfc) == 0xc0) {

  wacom->serial[idx] = ((data[3] & 0x0f) << 28) +
   (data[4] << 20) + (data[5] << 12) +
   (data[6] << 4) + (data[7] >> 4);

  wacom->id[idx] = (data[2] << 4) | (data[3] >> 4) |
   ((data[7] & 0x0f) << 20) | ((data[8] & 0xf0) << 12);

  switch (wacom->id[idx] & 0xfffff) {
   case 0x812:
   case 0x801:
   case 0x20802:
   case 0x012:
    wacom->tool[idx] = BTN_TOOL_PENCIL;
    break;
   case 0x822:
   case 0x842:
   case 0x852:
   case 0x823:
   case 0x813:
   case 0x885:
   case 0x802:
   case 0x804:
   case 0x40802:
   case 0x022:
    wacom->tool[idx] = BTN_TOOL_PEN;
    break;
   case 0x832:
   case 0x032:
    wacom->tool[idx] = BTN_TOOL_BRUSH;
    break;
   case 0x007:
          case 0x09c:
   case 0x094:
   case 0x017:
   case 0x806:
    wacom->tool[idx] = BTN_TOOL_MOUSE;
    break;
   case 0x096:
   case 0x097:
   case 0x006:
    wacom->tool[idx] = BTN_TOOL_LENS;
    break;
   case 0x82a:
   case 0x85a:
          case 0x91a:
   case 0xd1a:
   case 0x0fa:
   case 0x82b:
   case 0x81b:
   case 0x91b:
   case 0x80c:
   case 0x80a:
   case 0x4080a:
   case 0x90a:
    wacom->tool[idx] = BTN_TOOL_RUBBER;
    break;
   case 0xd12:
   case 0x912:
   case 0x112:
   case 0x913:
   case 0x902:
    wacom->tool[idx] = BTN_TOOL_AIRBRUSH;
    break;
   default:
    wacom->tool[idx] = BTN_TOOL_PEN;
  }
  return 1;
 }


 if (!((wacom->id[idx] >> 20) & 0x01) &&
   (wacom->features->type >= WACOM_21UX2 &&
    wacom->features->type <= WACOM_24HD))
  return 1;


 if ((data[1] & 0xfe) == 0x80) {




  wacom_report_abs(wcombo, ABS_X, 0);
  wacom_report_abs(wcombo, ABS_Y, 0);
  wacom_report_abs(wcombo, ABS_DISTANCE, 0);
  wacom_report_abs(wcombo, ABS_TILT_X, 0);
  wacom_report_abs(wcombo, ABS_TILT_Y, 0);
  if (wacom->tool[idx] >= BTN_TOOL_MOUSE) {
   wacom_report_key(wcombo, BTN_LEFT, 0);
   wacom_report_key(wcombo, BTN_MIDDLE, 0);
   wacom_report_key(wcombo, BTN_RIGHT, 0);
   wacom_report_key(wcombo, BTN_SIDE, 0);
   wacom_report_key(wcombo, BTN_EXTRA, 0);
   wacom_report_abs(wcombo, ABS_THROTTLE, 0);
   wacom_report_abs(wcombo, ABS_RZ, 0);
  } else {
   wacom_report_abs(wcombo, ABS_PRESSURE, 0);
   wacom_report_key(wcombo, BTN_STYLUS, 0);
   wacom_report_key(wcombo, BTN_STYLUS2, 0);
   wacom_report_key(wcombo, BTN_TOUCH, 0);
   wacom_report_abs(wcombo, ABS_WHEEL, 0);
   if (wacom->features->type >= INTUOS3S)
    wacom_report_abs(wcombo, ABS_Z, 0);
  }
  wacom_report_key(wcombo, wacom->tool[idx], 0);
  wacom_report_abs(wcombo, ABS_MISC, 0);
  wacom_input_event(wcombo, EV_MSC, MSC_SERIAL, wacom->serial[idx]);
  wacom->id[idx] = 0;
  return 2;
 }
 return 0;
}
