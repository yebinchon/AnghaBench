
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct usb_xpad {scalar_t__ dpad_mapping; struct input_dev* dev; } ;
struct input_dev {int dummy; } ;
typedef int __s16 ;
typedef int __le16 ;


 int ABS_HAT0X ;
 int ABS_HAT0Y ;
 int ABS_RX ;
 int ABS_RY ;
 int ABS_RZ ;
 int ABS_X ;
 int ABS_Y ;
 int ABS_Z ;
 int BTN_0 ;
 int BTN_1 ;
 int BTN_A ;
 int BTN_B ;
 int BTN_BACK ;
 int BTN_C ;
 int BTN_LEFT ;
 int BTN_RIGHT ;
 int BTN_START ;
 int BTN_THUMBL ;
 int BTN_THUMBR ;
 int BTN_X ;
 int BTN_Y ;
 int BTN_Z ;
 scalar_t__ MAP_DPAD_TO_AXES ;
 int input_report_abs (struct input_dev*,int ,int) ;
 int input_report_key (struct input_dev*,int ,unsigned char) ;
 int input_sync (struct input_dev*) ;
 scalar_t__ le16_to_cpup (int *) ;

__attribute__((used)) static void xpad_process_packet(struct usb_xpad *xpad, u16 cmd, unsigned char *data)
{
 struct input_dev *dev = xpad->dev;


 input_report_abs(dev, ABS_X,
    (__s16) le16_to_cpup((__le16 *)(data + 12)));
 input_report_abs(dev, ABS_Y,
    ~(__s16) le16_to_cpup((__le16 *)(data + 14)));


 input_report_abs(dev, ABS_RX,
    (__s16) le16_to_cpup((__le16 *)(data + 16)));
 input_report_abs(dev, ABS_RY,
    ~(__s16) le16_to_cpup((__le16 *)(data + 18)));


 input_report_abs(dev, ABS_Z, data[10]);
 input_report_abs(dev, ABS_RZ, data[11]);


 if (xpad->dpad_mapping == MAP_DPAD_TO_AXES) {
  input_report_abs(dev, ABS_HAT0X,
     !!(data[2] & 0x08) - !!(data[2] & 0x04));
  input_report_abs(dev, ABS_HAT0Y,
     !!(data[2] & 0x02) - !!(data[2] & 0x01));
 } else {
  input_report_key(dev, BTN_LEFT, data[2] & 0x04);
  input_report_key(dev, BTN_RIGHT, data[2] & 0x08);
  input_report_key(dev, BTN_0, data[2] & 0x01);
  input_report_key(dev, BTN_1, data[2] & 0x02);
 }


 input_report_key(dev, BTN_START, data[2] & 0x10);
 input_report_key(dev, BTN_BACK, data[2] & 0x20);
 input_report_key(dev, BTN_THUMBL, data[2] & 0x40);
 input_report_key(dev, BTN_THUMBR, data[2] & 0x80);


 input_report_key(dev, BTN_A, data[4]);
 input_report_key(dev, BTN_B, data[5]);
 input_report_key(dev, BTN_X, data[6]);
 input_report_key(dev, BTN_Y, data[7]);


 input_report_key(dev, BTN_C, data[8]);
 input_report_key(dev, BTN_Z, data[9]);

 input_sync(dev);
}
