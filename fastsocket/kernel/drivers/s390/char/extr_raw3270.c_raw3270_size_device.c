
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct raw3270 {int model; int rows; int cols; TYPE_1__* view; } ;
struct TYPE_2__ {struct raw3270* dev; } ;


 scalar_t__ MACHINE_IS_VM ;
 int __raw3270_size_device (struct raw3270*) ;
 int __raw3270_size_device_vm (struct raw3270*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int raw3270_init_mutex ;
 TYPE_1__ raw3270_init_view ;

__attribute__((used)) static int
raw3270_size_device(struct raw3270 *rp)
{
 int rc;

 mutex_lock(&raw3270_init_mutex);
 rp->view = &raw3270_init_view;
 raw3270_init_view.dev = rp;
 if (MACHINE_IS_VM)
  rc = __raw3270_size_device_vm(rp);
 else
  rc = __raw3270_size_device(rp);
 raw3270_init_view.dev = ((void*)0);
 rp->view = ((void*)0);
 mutex_unlock(&raw3270_init_mutex);
 if (rc == 0) {

  rp->model = 0;
  if (rp->rows == 24 && rp->cols == 80)
   rp->model = 2;
  if (rp->rows == 32 && rp->cols == 80)
   rp->model = 3;
  if (rp->rows == 43 && rp->cols == 80)
   rp->model = 4;
  if (rp->rows == 27 && rp->cols == 132)
   rp->model = 5;
 } else {

  rp->model = 2;
  rp->rows = 24;
  rp->cols = 80;
  return 0;
 }
 return rc;
}
