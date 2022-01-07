
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct zfcp_adapter {int dummy; } ;
struct ccw_device {int dev; } ;
typedef int busid ;


 struct zfcp_adapter* dev_get_drvdata (int *) ;
 struct ccw_device* get_ccwdev_by_busid (int *,char*) ;
 int put_device (int *) ;
 int snprintf (char*,int,char*,int) ;
 int zfcp_adapter_get (struct zfcp_adapter*) ;
 int zfcp_ccw_driver ;

__attribute__((used)) static struct zfcp_adapter *zfcp_cfdc_get_adapter(u32 devno)
{
 char busid[9];
 struct ccw_device *ccwdev;
 struct zfcp_adapter *adapter = ((void*)0);

 snprintf(busid, sizeof(busid), "0.0.%04x", devno);
 ccwdev = get_ccwdev_by_busid(&zfcp_ccw_driver, busid);
 if (!ccwdev)
  goto out;

 adapter = dev_get_drvdata(&ccwdev->dev);
 if (!adapter)
  goto out_put;

 zfcp_adapter_get(adapter);
out_put:
 put_device(&ccwdev->dev);
out:
 return adapter;
}
