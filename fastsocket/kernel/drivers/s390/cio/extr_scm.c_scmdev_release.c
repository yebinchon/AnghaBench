
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scm_device {int dummy; } ;
struct device {int dummy; } ;


 int kfree (struct scm_device*) ;
 struct scm_device* to_scm_dev (struct device*) ;

__attribute__((used)) static void scmdev_release(struct device *dev)
{
 struct scm_device *scmdev = to_scm_dev(dev);

 kfree(scmdev);
}
