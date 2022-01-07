
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srp_rport {int dummy; } ;
struct device {int parent; } ;


 struct srp_rport* dev_to_rport (struct device*) ;
 int kfree (struct srp_rport*) ;
 int put_device (int ) ;

__attribute__((used)) static void srp_rport_release(struct device *dev)
{
 struct srp_rport *rport = dev_to_rport(dev);

 put_device(dev->parent);
 kfree(rport);
}
