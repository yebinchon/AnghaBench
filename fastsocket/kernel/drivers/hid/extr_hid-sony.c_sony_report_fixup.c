
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sony_sc {int quirks; } ;
struct hid_device {int dev; } ;
typedef int __u8 ;


 int VAIO_RDESC_CONSTANT ;
 int dev_info (int *,char*) ;
 struct sony_sc* hid_get_drvdata (struct hid_device*) ;

__attribute__((used)) static void sony_report_fixup(struct hid_device *hdev, __u8 *rdesc,
  unsigned int rsize)
{
 struct sony_sc *sc = hid_get_drvdata(hdev);

 if ((sc->quirks & VAIO_RDESC_CONSTANT) &&
   rsize >= 56 && rdesc[54] == 0x81 && rdesc[55] == 0x07) {
  dev_info(&hdev->dev, "Fixing up Sony Vaio VGX report "
    "descriptor\n");
  rdesc[55] = 0x06;
 }
}
