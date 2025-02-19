
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w9966_dev {int pdev; } ;


 int W9966_STATE_CLAIMED ;
 int parport_release (int ) ;
 scalar_t__ w9966_getState (struct w9966_dev*,int ,int ) ;
 int w9966_setState (struct w9966_dev*,int ,int ) ;

__attribute__((used)) static inline void w9966_pdev_release(struct w9966_dev* cam)
{
 if (w9966_getState(cam, W9966_STATE_CLAIMED, 0))
  return;
 parport_release(cam->pdev);
 w9966_setState(cam, W9966_STATE_CLAIMED, 0);
}
