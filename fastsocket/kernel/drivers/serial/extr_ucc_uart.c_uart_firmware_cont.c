
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ length; } ;
struct qe_firmware {TYPE_1__ header; } ;
struct firmware {scalar_t__ size; scalar_t__ data; } ;
struct device {int dummy; } ;


 int dev_err (struct device*,char*) ;
 int firmware_loaded ;
 int qe_upload_firmware (struct qe_firmware*) ;
 int release_firmware (struct firmware const*) ;

__attribute__((used)) static void uart_firmware_cont(const struct firmware *fw, void *context)
{
 struct qe_firmware *firmware;
 struct device *dev = context;
 int ret;

 if (!fw) {
  dev_err(dev, "firmware not found\n");
  return;
 }

 firmware = (struct qe_firmware *) fw->data;

 if (firmware->header.length != fw->size) {
  dev_err(dev, "invalid firmware\n");
  goto out;
 }

 ret = qe_upload_firmware(firmware);
 if (ret) {
  dev_err(dev, "could not load firmware\n");
  goto out;
 }

 firmware_loaded = 1;
 out:
 release_firmware(fw);
}
