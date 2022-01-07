
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scm_driver {int (* handler ) (struct scm_device*,int ,int) ;} ;
struct TYPE_4__ {int driver; } ;
struct scm_device {TYPE_2__ dev; } ;
struct aob_rq_header {int data; struct scm_device* scmdev; } ;
struct TYPE_3__ {scalar_t__ data; } ;
struct aob {TYPE_1__ request; } ;


 int stub1 (struct scm_device*,int ,int) ;
 struct scm_driver* to_scm_drv (int ) ;

void scm_irq_handler(struct aob *aob, int error)
{
 struct aob_rq_header *aobrq = (void *) aob->request.data;
 struct scm_device *scmdev = aobrq->scmdev;
 struct scm_driver *scmdrv = to_scm_drv(scmdev->dev.driver);

 scmdrv->handler(scmdev, aobrq->data, error);
}
