
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwc_device {scalar_t__ button_dev; int vdev; } ;


 int input_unregister_device (scalar_t__) ;
 int kfree (struct pwc_device*) ;
 int pwc_remove_sysfs_files (int ) ;
 int video_unregister_device (int ) ;

__attribute__((used)) static void pwc_cleanup(struct pwc_device *pdev)
{
 pwc_remove_sysfs_files(pdev->vdev);
 video_unregister_device(pdev->vdev);






 kfree(pdev);
}
