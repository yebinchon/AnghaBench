
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wacom_wac {char* data; TYPE_1__* shared; } ;
typedef int __le16 ;
struct TYPE_2__ {int touch_down; int stylus_in_proximity; } ;


 int ABS_X ;
 int ABS_Y ;
 int BTN_TOUCH ;
 size_t WACOM_PKGLEN_TPC1FG ;
 int get_unaligned_le16 (char*) ;
 int le16_to_cpup (int *) ;
 int wacom_report_abs (void*,int ,int) ;
 int wacom_report_key (void*,int ,int) ;

__attribute__((used)) static int wacom_tpc_single_touch(struct wacom_wac *wacom, void *wcombo, size_t len)
{
 char *data = wacom->data;
 bool prox;
 int x = 0, y = 0;

 if (!wacom->shared->stylus_in_proximity) {
  if (len == WACOM_PKGLEN_TPC1FG) {
   prox = data[0] & 0x01;
   x = get_unaligned_le16(&data[1]);
   y = get_unaligned_le16(&data[3]);
  } else {
   prox = data[1] & 0x01;
   x = le16_to_cpup((__le16 *)&data[2]);
   y = le16_to_cpup((__le16 *)&data[4]);
  }
 } else

  prox = 0;

 if (prox) {
  wacom_report_abs(wcombo, ABS_X, x);
  wacom_report_abs(wcombo, ABS_Y, y);
 }
 wacom_report_key(wcombo, BTN_TOUCH, prox);


 wacom->shared->touch_down = prox;

 return 1;
}
