
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wacom_data {unsigned char features; } ;
struct input_dev {int dummy; } ;
struct hid_device {int dev; } ;


 int dev_err (int *,char*,unsigned char,unsigned char) ;
 int wacom_i4_parse_button_report (struct wacom_data*,struct input_dev*,unsigned char*) ;
 int wacom_i4_parse_pen_report (struct wacom_data*,struct input_dev*,unsigned char*) ;

__attribute__((used)) static void wacom_i4_parse_report(struct hid_device *hdev,
   struct wacom_data *wdata,
   struct input_dev *input, unsigned char *data)
{
 switch (data[0]) {
 case 0x00:
  break;
 case 0x02:
  wacom_i4_parse_pen_report(wdata, input, data);
  break;
 case 0x03:
  wdata->features = data[2];
  break;
 case 0x0C:
  wacom_i4_parse_button_report(wdata, input, data);
  break;
 default:
  dev_err(&(hdev)->dev, "Unknown report: %d,%d\n", data[0], data[1]);
  break;
 }
}
