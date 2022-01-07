
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_device {int dev; } ;
typedef int __u8 ;


 unsigned long MS_RDESC ;
 int dev_info (int *,char*) ;
 scalar_t__ hid_get_drvdata (struct hid_device*) ;

__attribute__((used)) static void ms_report_fixup(struct hid_device *hdev, __u8 *rdesc,
  unsigned int rsize)
{
 unsigned long quirks = (unsigned long)hid_get_drvdata(hdev);

 if ((quirks & MS_RDESC) && rsize == 571 && rdesc[557] == 0x19 &&
   rdesc[559] == 0x29) {
  dev_info(&hdev->dev, "fixing up Microsoft Wireless Receiver "
    "Model 1028 report descriptor\n");
  rdesc[557] = 0x35;
  rdesc[559] = 0x45;
 }
}
