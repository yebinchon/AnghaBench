
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnp_device_id {int dummy; } ;
struct pnp_dev {int dummy; } ;


 int reserve_resources_of_dev (struct pnp_dev*) ;

__attribute__((used)) static int system_pnp_probe(struct pnp_dev *dev,
       const struct pnp_device_id *dev_id)
{
 reserve_resources_of_dev(dev);
 return 0;
}
