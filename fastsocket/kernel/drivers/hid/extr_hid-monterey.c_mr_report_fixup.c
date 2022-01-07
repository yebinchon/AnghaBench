
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_device {int dev; } ;
typedef int __u8 ;


 int dev_info (int *,char*) ;

__attribute__((used)) static void mr_report_fixup(struct hid_device *hdev, __u8 *rdesc,
  unsigned int rsize)
{
 if (rsize >= 30 && rdesc[29] == 0x05 && rdesc[30] == 0x09) {
  dev_info(&hdev->dev, "fixing up button/consumer in HID report "
    "descriptor\n");
  rdesc[30] = 0x0c;
 }
}
