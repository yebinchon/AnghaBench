
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wacom_wac {char* data; int* id; int * tool; struct wacom_features* features; } ;
struct wacom_features {int pressure_max; } ;
typedef int __le16 ;


 int ABS_MISC ;
 int ABS_PRESSURE ;
 int ABS_X ;
 int ABS_Y ;
 int BTN_STYLUS ;
 int BTN_STYLUS2 ;
 int BTN_TOOL_PEN ;
 int BTN_TOOL_RUBBER ;
 int BTN_TOUCH ;
 int ERASER_DEVICE_ID ;
 int STYLUS_DEVICE_ID ;
 int dbg (char*,char) ;
 int le16_to_cpup (int *) ;
 int wacom_input_sync (void*) ;
 int wacom_report_abs (void*,int ,int) ;
 int wacom_report_key (void*,int ,int) ;

__attribute__((used)) static int wacom_dtu_irq(struct wacom_wac *wacom, void *wcombo)
{
 struct wacom_features *features = wacom->features;
 char *data = wacom->data;
 int prox = data[1] & 0x20, pressure;

 dbg("wacom_dtu_irq: received report #%d", data[0]);

 if (prox) {

  wacom->tool[0] = (data[1] & 0x0c) ? BTN_TOOL_RUBBER : BTN_TOOL_PEN;
  if (wacom->tool[0] == BTN_TOOL_PEN)
   wacom->id[0] = STYLUS_DEVICE_ID;
  else
   wacom->id[0] = ERASER_DEVICE_ID;
 }
 wacom_report_key(wcombo, BTN_STYLUS, data[1] & 0x02);
 wacom_report_key(wcombo, BTN_STYLUS2, data[1] & 0x10);
 wacom_report_abs(wcombo, ABS_X, le16_to_cpup((__le16 *)&data[2]));
 wacom_report_abs(wcombo, ABS_Y, le16_to_cpup((__le16 *)&data[4]));
 pressure = ((data[7] & 0x01) << 8) | data[6];
 if (pressure < 0)
  pressure = features->pressure_max + pressure + 1;
 wacom_report_abs(wcombo, ABS_PRESSURE, pressure);
 wacom_report_key(wcombo, BTN_TOUCH, data[1] & 0x05);
 if (!prox)
  wacom->id[0] = 0;
 wacom_report_key(wcombo, wacom->tool[0], prox);
 wacom_report_abs(wcombo, ABS_MISC, wacom->id[0]);
 wacom_input_sync(wcombo);
 return 1;
}
