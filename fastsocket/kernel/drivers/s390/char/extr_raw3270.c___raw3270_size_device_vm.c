
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct raw3270 {int model; int rows; int cols; int cdev; } ;
struct diag210 {int dummy; } ;
struct ccw_dev_id {int devno; } ;
struct TYPE_3__ {int vrdclen; int vrdccrmd; int vrdcdvno; } ;


 int EOPNOTSUPP ;
 int ccw_device_get_id (int ,struct ccw_dev_id*) ;
 int diag210 (TYPE_1__*) ;
 TYPE_1__ raw3270_init_diag210 ;

__attribute__((used)) static int
__raw3270_size_device_vm(struct raw3270 *rp)
{
 int rc, model;
 struct ccw_dev_id dev_id;

 ccw_device_get_id(rp->cdev, &dev_id);
 raw3270_init_diag210.vrdcdvno = dev_id.devno;
 raw3270_init_diag210.vrdclen = sizeof(struct diag210);
 rc = diag210(&raw3270_init_diag210);
 if (rc)
  return rc;
 model = raw3270_init_diag210.vrdccrmd;
 switch (model) {
 case 2:
  rp->model = model;
  rp->rows = 24;
  rp->cols = 80;
  break;
 case 3:
  rp->model = model;
  rp->rows = 32;
  rp->cols = 80;
  break;
 case 4:
  rp->model = model;
  rp->rows = 43;
  rp->cols = 80;
  break;
 case 5:
  rp->model = model;
  rp->rows = 27;
  rp->cols = 132;
  break;
 default:
  rc = -EOPNOTSUPP;
  break;
 }
 return rc;
}
