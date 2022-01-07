
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scm_device {scalar_t__ address; } ;
struct sale {scalar_t__ sa; } ;
struct device {int dummy; } ;


 struct scm_device* to_scm_dev (struct device*) ;

__attribute__((used)) static int check_address(struct device *dev, void *data)
{
 struct scm_device *scmdev = to_scm_dev(dev);
 struct sale *sale = data;

 return scmdev->address == sale->sa;
}
