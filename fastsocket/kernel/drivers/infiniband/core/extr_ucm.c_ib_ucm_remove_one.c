
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_ucm_device {int dev; } ;
struct ib_device {int dummy; } ;


 int device_unregister (int *) ;
 struct ib_ucm_device* ib_get_client_data (struct ib_device*,int *) ;
 int ucm_client ;

__attribute__((used)) static void ib_ucm_remove_one(struct ib_device *device)
{
 struct ib_ucm_device *ucm_dev = ib_get_client_data(device, &ucm_client);

 if (!ucm_dev)
  return;

 device_unregister(&ucm_dev->dev);
}
