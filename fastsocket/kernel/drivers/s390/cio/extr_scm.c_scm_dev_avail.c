
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scm_driver {int (* notify ) (struct scm_device*,int ) ;} ;
struct scm_device {int dummy; } ;
struct device {scalar_t__ driver; } ;


 int SCM_AVAIL ;
 int stub1 (struct scm_device*,int ) ;
 struct scm_device* to_scm_dev (struct device*) ;
 struct scm_driver* to_scm_drv (scalar_t__) ;

__attribute__((used)) static int scm_dev_avail(struct device *dev, void *unused)
{
 struct scm_driver *scmdrv = to_scm_drv(dev->driver);
 struct scm_device *scmdev = to_scm_dev(dev);

 if (dev->driver && scmdrv->notify)
  scmdrv->notify(scmdev, SCM_AVAIL);

 return 0;
}
