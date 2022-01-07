
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcam_device {int pdev; int vdev; } ;


 int kfree (struct qcam_device*) ;
 int parport_unregister_device (int ) ;
 int video_unregister_device (int *) ;

__attribute__((used)) static void close_cqcam(struct qcam_device *qcam)
{
 video_unregister_device(&qcam->vdev);
 parport_unregister_device(qcam->pdev);
 kfree(qcam);
}
