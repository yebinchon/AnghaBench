
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_device {int dev; } ;
typedef int __u8 ;


 int dev_info (int *,char*) ;

__attribute__((used)) static void kye_report_fixup(struct hid_device *hdev, __u8 *rdesc,
  unsigned int rsize)
{
 if (rsize >= 74 &&
  rdesc[61] == 0x05 && rdesc[62] == 0x08 &&
  rdesc[63] == 0x19 && rdesc[64] == 0x08 &&
  rdesc[65] == 0x29 && rdesc[66] == 0x0f &&
  rdesc[71] == 0x75 && rdesc[72] == 0x08 &&
  rdesc[73] == 0x95 && rdesc[74] == 0x01) {
  dev_info(&hdev->dev, "fixing up Kye/Genius Ergo Mouse report "
    "descriptor\n");
  rdesc[62] = 0x09;
  rdesc[64] = 0x04;
  rdesc[66] = 0x07;
  rdesc[72] = 0x01;
  rdesc[74] = 0x08;
 }
}
