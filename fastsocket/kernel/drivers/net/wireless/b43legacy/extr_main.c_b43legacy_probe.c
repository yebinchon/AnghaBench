
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssb_device_id {int dummy; } ;
struct ssb_device {int dummy; } ;
struct b43legacy_wl {int firmware_load; } ;


 int B43legacy_WARN_ON (int) ;
 int INIT_WORK (int *,int ) ;
 int b43legacy_one_core_attach (struct ssb_device*,struct b43legacy_wl*) ;
 int b43legacy_request_firmware ;
 int b43legacy_wireless_exit (struct ssb_device*,struct b43legacy_wl*) ;
 int b43legacy_wireless_init (struct ssb_device*) ;
 int schedule_work (int *) ;
 struct b43legacy_wl* ssb_get_devtypedata (struct ssb_device*) ;

__attribute__((used)) static int b43legacy_probe(struct ssb_device *dev,
    const struct ssb_device_id *id)
{
 struct b43legacy_wl *wl;
 int err;
 int first = 0;

 wl = ssb_get_devtypedata(dev);
 if (!wl) {

  first = 1;
  err = b43legacy_wireless_init(dev);
  if (err)
   goto out;
  wl = ssb_get_devtypedata(dev);
  B43legacy_WARN_ON(!wl);
 }
 err = b43legacy_one_core_attach(dev, wl);
 if (err)
  goto err_wireless_exit;


 INIT_WORK(&wl->firmware_load, b43legacy_request_firmware);
 schedule_work(&wl->firmware_load);

out:
 return err;

err_wireless_exit:
 if (first)
  b43legacy_wireless_exit(dev, wl);
 return err;
}
