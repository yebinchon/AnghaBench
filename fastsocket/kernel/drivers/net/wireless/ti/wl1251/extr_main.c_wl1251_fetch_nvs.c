
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wl1251 {int nvs_len; int nvs; TYPE_1__* hw; } ;
struct firmware {int size; int data; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int wiphy; } ;


 int EILSEQ ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int WL1251_NVS_NAME ;
 int kmemdup (int ,int,int ) ;
 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,int ,struct device*) ;
 struct device* wiphy_dev (int ) ;
 int wl1251_error (char*,...) ;

__attribute__((used)) static int wl1251_fetch_nvs(struct wl1251 *wl)
{
 const struct firmware *fw;
 struct device *dev = wiphy_dev(wl->hw->wiphy);
 int ret;

 ret = request_firmware(&fw, WL1251_NVS_NAME, dev);

 if (ret < 0) {
  wl1251_error("could not get nvs file: %d", ret);
  return ret;
 }

 if (fw->size % 4) {
  wl1251_error("nvs size is not multiple of 32 bits: %zu",
        fw->size);
  ret = -EILSEQ;
  goto out;
 }

 wl->nvs_len = fw->size;
 wl->nvs = kmemdup(fw->data, wl->nvs_len, GFP_KERNEL);

 if (!wl->nvs) {
  wl1251_error("could not allocate memory for the nvs file");
  ret = -ENOMEM;
  goto out;
 }

 ret = 0;

out:
 release_firmware(fw);

 return ret;
}
