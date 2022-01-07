
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_device {int dev; } ;
typedef int __u8 ;


 int dev_info (int *,char*) ;

__attribute__((used)) static void pl_report_fixup(struct hid_device *hdev, __u8 *rdesc,
  unsigned int rsize)
{
 if (rsize >= 60 && rdesc[39] == 0x2a && rdesc[40] == 0xf5 &&
   rdesc[41] == 0x00 && rdesc[59] == 0x26 &&
   rdesc[60] == 0xf9 && rdesc[61] == 0x00) {
  dev_info(&hdev->dev, "fixing up Petalynx Maxter Remote report "
    "descriptor\n");
  rdesc[60] = 0xfa;
  rdesc[40] = 0xfa;
 }
}
