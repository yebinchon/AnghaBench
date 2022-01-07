
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_device {int (* hid_output_raw_report ) (struct hid_device*,int*,int,int ) ;} ;
typedef int __u8 ;


 int HID_FEATURE_REPORT ;
 int stub1 (struct hid_device*,int*,int,int ) ;

__attribute__((used)) static void wacom_set_features(struct hid_device *hdev)
{
 int ret;
 __u8 rep_data[2];


 rep_data[0] = 0x03;
 rep_data[1] = 0x20;
 ret = hdev->hid_output_raw_report(hdev, rep_data, 2,
    HID_FEATURE_REPORT);
 return;
}
