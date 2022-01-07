
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scm_device {int dummy; } ;
struct sale {int dummy; } ;
struct device {int dummy; } ;


 struct device* bus_find_device (int *,int *,struct sale*,int ) ;
 int check_address ;
 int scm_bus_type ;
 struct scm_device* to_scm_dev (struct device*) ;

__attribute__((used)) static struct scm_device *scmdev_find(struct sale *sale)
{
 struct device *dev;

 dev = bus_find_device(&scm_bus_type, ((void*)0), sale, check_address);

 return dev ? to_scm_dev(dev) : ((void*)0);
}
