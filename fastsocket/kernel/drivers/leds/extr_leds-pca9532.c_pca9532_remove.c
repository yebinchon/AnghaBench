
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pca9532_data {int * idev; int work; TYPE_1__* leds; } ;
struct i2c_client {int dummy; } ;
struct TYPE_2__ {int type; int work; int ldev; } ;





 int cancel_work_sync (int *) ;
 struct pca9532_data* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_set_clientdata (struct i2c_client*,int *) ;
 int input_free_device (int *) ;
 int input_unregister_device (int *) ;
 int kfree (struct pca9532_data*) ;
 int led_classdev_unregister (int *) ;

__attribute__((used)) static int pca9532_remove(struct i2c_client *client)
{
 struct pca9532_data *data = i2c_get_clientdata(client);
 int i;
 for (i = 0; i < 16; i++)
  switch (data->leds[i].type) {
  case 128:
   break;
  case 130:
   led_classdev_unregister(&data->leds[i].ldev);
   cancel_work_sync(&data->leds[i].work);
   break;
  case 129:
   if (data->idev != ((void*)0)) {
    input_unregister_device(data->idev);
    input_free_device(data->idev);
    cancel_work_sync(&data->work);
    data->idev = ((void*)0);
   }
   break;
  }

 kfree(data);
 i2c_set_clientdata(client, ((void*)0));
 return 0;
}
