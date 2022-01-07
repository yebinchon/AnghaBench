
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soc_camera_device {int list; } ;


 int list_del (int *) ;

__attribute__((used)) static void soc_camera_device_unregister(struct soc_camera_device *icd)
{
 list_del(&icd->list);
}
