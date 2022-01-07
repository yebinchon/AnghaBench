
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w9966_dev {int pdev; int pport; int vdev; } ;


 int IEEE1284_MODE_COMPAT ;
 int W9966_STATE_PDEV ;
 int W9966_STATE_VDEV ;
 int parport_negotiate (int ,int ) ;
 int parport_unregister_device (int ) ;
 int video_unregister_device (int *) ;
 scalar_t__ w9966_getState (struct w9966_dev*,int ,int ) ;
 int w9966_pdev_claim (struct w9966_dev*) ;
 int w9966_pdev_release (struct w9966_dev*) ;
 int w9966_setState (struct w9966_dev*,int ,int ) ;

__attribute__((used)) static void w9966_term(struct w9966_dev* cam)
{

 if (w9966_getState(cam, W9966_STATE_VDEV, W9966_STATE_VDEV)) {
  video_unregister_device(&cam->vdev);
  w9966_setState(cam, W9966_STATE_VDEV, 0);
 }


 if (w9966_getState(cam, W9966_STATE_PDEV, W9966_STATE_PDEV)) {
  w9966_pdev_claim(cam);
  parport_negotiate(cam->pport, IEEE1284_MODE_COMPAT);
  w9966_pdev_release(cam);
 }


 if (w9966_getState(cam, W9966_STATE_PDEV, W9966_STATE_PDEV)) {
  parport_unregister_device(cam->pdev);
  w9966_setState(cam, W9966_STATE_PDEV, 0);
 }
}
