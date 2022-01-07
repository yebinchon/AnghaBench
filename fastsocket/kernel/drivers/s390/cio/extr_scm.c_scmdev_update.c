
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scm_driver {int (* notify ) (struct scm_device*,int ) ;} ;
struct TYPE_4__ {int kobj; int driver; } ;
struct TYPE_3__ {scalar_t__ rank; scalar_t__ oper_state; } ;
struct scm_device {TYPE_2__ dev; TYPE_1__ attrs; } ;
struct sale {scalar_t__ rank; scalar_t__ op_state; } ;


 int KOBJ_CHANGE ;
 int SCM_CHANGE ;
 int kobject_uevent (int *,int ) ;
 int stub1 (struct scm_device*,int ) ;
 struct scm_driver* to_scm_drv (int ) ;

__attribute__((used)) static void scmdev_update(struct scm_device *scmdev, struct sale *sale)
{
 struct scm_driver *scmdrv;
 bool changed;

 changed = scmdev->attrs.rank != sale->rank ||
    scmdev->attrs.oper_state != sale->op_state;
 scmdev->attrs.rank = sale->rank;
 scmdev->attrs.oper_state = sale->op_state;
 if (!scmdev->dev.driver)
  goto out;
 scmdrv = to_scm_drv(scmdev->dev.driver);
 if (changed && scmdrv->notify)
  scmdrv->notify(scmdev, SCM_CHANGE);
out:
 if (changed)
  kobject_uevent(&scmdev->dev.kobj, KOBJ_CHANGE);
}
