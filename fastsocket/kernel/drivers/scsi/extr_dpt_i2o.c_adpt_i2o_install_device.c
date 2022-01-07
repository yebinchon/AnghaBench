
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct i2o_device {scalar_t__* dev_name; struct i2o_device* prev; struct i2o_device* next; int * owner; TYPE_1__* controller; } ;
struct TYPE_3__ {struct i2o_device* devices; } ;
typedef TYPE_1__ adpt_hba ;


 int adpt_configuration_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int adpt_i2o_install_device(adpt_hba* pHba, struct i2o_device *d)
{
 mutex_lock(&adpt_configuration_lock);
 d->controller=pHba;
 d->owner=((void*)0);
 d->next=pHba->devices;
 d->prev=((void*)0);
 if (pHba->devices != ((void*)0)){
  pHba->devices->prev=d;
 }
 pHba->devices=d;
 *d->dev_name = 0;

 mutex_unlock(&adpt_configuration_lock);
 return 0;
}
