
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int hvc_kick () ;

__attribute__((used)) static int hvc_iucv_pm_restore_thaw(struct device *dev)
{
 hvc_kick();
 return 0;
}
