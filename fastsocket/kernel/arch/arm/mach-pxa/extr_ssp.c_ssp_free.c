
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ssp_device {TYPE_1__* pdev; int * label; scalar_t__ use_count; } ;
struct TYPE_2__ {int dev; } ;


 int dev_err (int *,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ssp_lock ;

void ssp_free(struct ssp_device *ssp)
{
 mutex_lock(&ssp_lock);
 if (ssp->use_count) {
  ssp->use_count--;
  ssp->label = ((void*)0);
 } else
  dev_err(&ssp->pdev->dev, "device already free\n");
 mutex_unlock(&ssp_lock);
}
