
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct firmware {int dummy; } ;
struct TYPE_3__ {struct firmware const* fw; } ;
struct ar9170 {TYPE_2__* udev; TYPE_1__ fw; } ;
struct TYPE_4__ {int dev; } ;


 int carl9170_usb_firmware_failed (struct ar9170*) ;
 int carl9170_usb_firmware_finish (struct ar9170*) ;
 int dev_err (int *,char*) ;

__attribute__((used)) static void carl9170_usb_firmware_step2(const struct firmware *fw,
     void *context)
{
 struct ar9170 *ar = context;

 if (fw) {
  ar->fw.fw = fw;
  carl9170_usb_firmware_finish(ar);
  return;
 }

 dev_err(&ar->udev->dev, "firmware not found.\n");
 carl9170_usb_firmware_failed(ar);
}
