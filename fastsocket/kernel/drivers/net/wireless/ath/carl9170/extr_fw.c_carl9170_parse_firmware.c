
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct firmware {scalar_t__ size; scalar_t__ data; } ;
struct carl9170fw_desc_head {int dummy; } ;
struct TYPE_3__ {struct carl9170fw_desc_head const* desc; struct firmware* fw; } ;
struct ar9170 {TYPE_2__* udev; TYPE_1__ fw; } ;
struct TYPE_4__ {int dev; } ;


 int EINVAL ;
 int ENODATA ;
 scalar_t__ WARN_ON (int) ;
 struct carl9170fw_desc_head* carl9170_find_fw_desc (struct ar9170*,scalar_t__,scalar_t__) ;
 int carl9170_fw (struct ar9170*,scalar_t__,scalar_t__) ;
 int carl9170_fw_info (struct ar9170*) ;
 int carl9170_fw_verify_descs (struct ar9170*,struct carl9170fw_desc_head const*,scalar_t__) ;
 int dev_err (int *,char*,...) ;

int carl9170_parse_firmware(struct ar9170 *ar)
{
 const struct carl9170fw_desc_head *fw_desc = ((void*)0);
 const struct firmware *fw = ar->fw.fw;
 unsigned long header_offset = 0;
 int err;

 if (WARN_ON(!fw))
  return -EINVAL;

 fw_desc = carl9170_find_fw_desc(ar, fw->data, fw->size);

 if (!fw_desc) {
  dev_err(&ar->udev->dev, "unsupported firmware.\n");
  return -ENODATA;
 }

 header_offset = (unsigned long)fw_desc - (unsigned long)fw->data;

 err = carl9170_fw_verify_descs(ar, fw_desc, fw->size - header_offset);
 if (err) {
  dev_err(&ar->udev->dev, "damaged firmware (%d).\n", err);
  return err;
 }

 ar->fw.desc = fw_desc;

 carl9170_fw_info(ar);

 err = carl9170_fw(ar, fw->data, fw->size);
 if (err) {
  dev_err(&ar->udev->dev, "failed to parse firmware (%d).\n",
   err);
  return err;
 }

 return 0;
}
