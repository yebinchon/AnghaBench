
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wacom_wac {unsigned char* data; TYPE_1__* features; } ;
struct TYPE_2__ {scalar_t__ type; } ;


 int ABS_PRESSURE ;
 int ABS_TILT_X ;
 int ABS_TILT_Y ;
 int ABS_WHEEL ;
 int BTN_STYLUS ;
 int BTN_STYLUS2 ;
 int BTN_TOUCH ;
 scalar_t__ INTUOS4L ;
 scalar_t__ INTUOS4S ;
 scalar_t__ INTUOS5L ;
 scalar_t__ INTUOS5S ;
 scalar_t__ WACOM_21UX2 ;
 scalar_t__ WACOM_24HD ;
 int wacom_report_abs (void*,int ,unsigned char) ;
 int wacom_report_key (void*,int ,int) ;

__attribute__((used)) static void wacom_intuos_general(struct wacom_wac *wacom, void *wcombo)
{
 unsigned char *data = wacom->data;
 unsigned int t;


 if ((data[1] & 0xb8) == 0xa0) {
  t = (data[6] << 2) | ((data[7] >> 6) & 3);
  if ((wacom->features->type >= INTUOS4S && wacom->features->type <= INTUOS4L) ||
                    (wacom->features->type >= INTUOS5S && wacom->features->type <= INTUOS5L) ||
   (wacom->features->type >= WACOM_21UX2 &&
   wacom->features->type <= WACOM_24HD)) {
   t = (t << 1) | (data[1] & 1);
  }
  wacom_report_abs(wcombo, ABS_PRESSURE, t);
  wacom_report_abs(wcombo, ABS_TILT_X,
    ((data[7] << 1) & 0x7e) | (data[8] >> 7));
  wacom_report_abs(wcombo, ABS_TILT_Y, data[8] & 0x7f);
  wacom_report_key(wcombo, BTN_STYLUS, data[1] & 2);
  wacom_report_key(wcombo, BTN_STYLUS2, data[1] & 4);
  wacom_report_key(wcombo, BTN_TOUCH, t > 10);
 }


 if ((data[1] & 0xbc) == 0xb4) {
  wacom_report_abs(wcombo, ABS_WHEEL,
    (data[6] << 2) | ((data[7] >> 6) & 3));
  wacom_report_abs(wcombo, ABS_TILT_X,
    ((data[7] << 1) & 0x7e) | (data[8] >> 7));
  wacom_report_abs(wcombo, ABS_TILT_Y, data[8] & 0x7f);
 }
 return;
}
