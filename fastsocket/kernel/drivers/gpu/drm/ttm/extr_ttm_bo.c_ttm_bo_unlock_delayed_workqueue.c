
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_bo_device {int wq; } ;


 int HZ ;
 int schedule_delayed_work (int *,int) ;

void ttm_bo_unlock_delayed_workqueue(struct ttm_bo_device *bdev, int resched)
{
 if (resched)
  schedule_delayed_work(&bdev->wq,
          ((HZ / 100) < 1) ? 1 : HZ / 100);
}
