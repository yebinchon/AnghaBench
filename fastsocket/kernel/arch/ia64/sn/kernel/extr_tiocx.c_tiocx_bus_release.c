
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int kfree (int ) ;
 int to_cx_dev (struct device*) ;

__attribute__((used)) static void tiocx_bus_release(struct device *dev)
{
 kfree(to_cx_dev(dev));
}
