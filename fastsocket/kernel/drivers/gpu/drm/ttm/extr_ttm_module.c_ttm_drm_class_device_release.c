
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int atomic_set (int *,int) ;
 int device_released ;
 int exit_q ;
 int wake_up_all (int *) ;

__attribute__((used)) static void ttm_drm_class_device_release(struct device *dev)
{
 atomic_set(&device_released, 1);
 wake_up_all(&exit_q);
}
