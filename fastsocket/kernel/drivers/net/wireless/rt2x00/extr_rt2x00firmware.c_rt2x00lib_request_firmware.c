
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct rt2x00_dev {struct firmware const* fw; TYPE_3__* ops; TYPE_1__* hw; } ;
struct firmware {int size; int* data; } ;
struct device {int dummy; } ;
struct TYPE_8__ {int fw_version; } ;
struct TYPE_7__ {TYPE_2__* lib; } ;
struct TYPE_6__ {char* (* get_firmware_name ) (struct rt2x00_dev*) ;int (* check_firmware ) (struct rt2x00_dev*,int*,int) ;} ;
struct TYPE_5__ {TYPE_4__* wiphy; } ;


 int DRV_PROJECT ;
 int EINVAL ;
 int ENOENT ;




 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,char*,struct device*) ;
 int rt2x00_err (struct rt2x00_dev*,char*,...) ;
 int rt2x00_info (struct rt2x00_dev*,char*,...) ;
 int snprintf (int ,int,char*,int,int) ;
 char* stub1 (struct rt2x00_dev*) ;
 int stub2 (struct rt2x00_dev*,int*,int) ;
 struct device* wiphy_dev (TYPE_4__*) ;

__attribute__((used)) static int rt2x00lib_request_firmware(struct rt2x00_dev *rt2x00dev)
{
 struct device *device = wiphy_dev(rt2x00dev->hw->wiphy);
 const struct firmware *fw;
 char *fw_name;
 int retval;




 fw_name = rt2x00dev->ops->lib->get_firmware_name(rt2x00dev);
 if (!fw_name) {
  rt2x00_err(rt2x00dev,
      "Invalid firmware filename\n"
      "Please file bug report to %s\n", DRV_PROJECT);
  return -EINVAL;
 }

 rt2x00_info(rt2x00dev, "Loading firmware file '%s'\n", fw_name);

 retval = request_firmware(&fw, fw_name, device);
 if (retval) {
  rt2x00_err(rt2x00dev, "Failed to request Firmware\n");
  return retval;
 }

 if (!fw || !fw->size || !fw->data) {
  rt2x00_err(rt2x00dev, "Failed to read Firmware\n");
  release_firmware(fw);
  return -ENOENT;
 }

 rt2x00_info(rt2x00dev, "Firmware detected - version: %d.%d\n",
      fw->data[fw->size - 4], fw->data[fw->size - 3]);
 snprintf(rt2x00dev->hw->wiphy->fw_version,
   sizeof(rt2x00dev->hw->wiphy->fw_version), "%d.%d",
   fw->data[fw->size - 4], fw->data[fw->size - 3]);

 retval = rt2x00dev->ops->lib->check_firmware(rt2x00dev, fw->data, fw->size);
 switch (retval) {
 case 128:
  break;
 case 131:
  rt2x00_err(rt2x00dev, "Firmware checksum error\n");
  goto exit;
 case 130:
  rt2x00_err(rt2x00dev, "Invalid firmware file length (len=%zu)\n",
      fw->size);
  goto exit;
 case 129:
  rt2x00_err(rt2x00dev, "Current firmware does not support detected chipset\n");
  goto exit;
 }

 rt2x00dev->fw = fw;

 return 0;

exit:
 release_firmware(fw);

 return -ENOENT;
}
