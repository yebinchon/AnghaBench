
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ssc_device {TYPE_1__* pdev; int clk; scalar_t__ user; } ;
struct TYPE_2__ {int dev; } ;


 int clk_disable (int ) ;
 int dev_dbg (int *,char*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int user_lock ;

void ssc_free(struct ssc_device *ssc)
{
 spin_lock(&user_lock);
 if (ssc->user) {
  ssc->user--;
  clk_disable(ssc->clk);
 } else {
  dev_dbg(&ssc->pdev->dev, "device already free\n");
 }
 spin_unlock(&user_lock);
}
