
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ips_driver {int __gpu_turbo_on; TYPE_1__* dev; int (* gpu_turbo_disable ) () ;} ;
struct TYPE_2__ {int dev; } ;


 int dev_err (int *,char*) ;
 int stub1 () ;

__attribute__((used)) static void ips_disable_gpu_turbo(struct ips_driver *ips)
{

 if (!ips->__gpu_turbo_on)
  return;

 if (!ips->gpu_turbo_disable())
  dev_err(&ips->dev->dev, "failed to disable graphis turbo\n");
 else
  ips->__gpu_turbo_on = 0;
}
