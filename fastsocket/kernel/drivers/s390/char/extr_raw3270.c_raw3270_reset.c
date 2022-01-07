
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raw3270_view {struct raw3270* dev; } ;
struct raw3270 {int flags; struct raw3270_view* view; } ;


 int EACCES ;
 int ENODEV ;
 int RAW3270_FLAGS_FROZEN ;
 int RAW3270_FLAGS_READY ;
 int raw3270_reset_device (struct raw3270*) ;
 scalar_t__ test_bit (int ,int *) ;

int
raw3270_reset(struct raw3270_view *view)
{
 struct raw3270 *rp;
 int rc;

 rp = view->dev;
 if (!rp || rp->view != view ||
     test_bit(RAW3270_FLAGS_FROZEN, &rp->flags))
  rc = -EACCES;
 else if (!test_bit(RAW3270_FLAGS_READY, &rp->flags))
  rc = -ENODEV;
 else
  rc = raw3270_reset_device(view->dev);
 return rc;
}
