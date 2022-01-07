
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct resource {int dummy; } ;
struct device_node {int dummy; } ;


 int EINVAL ;
 int __of_address_to_resource (struct device_node*,int const*,int ,unsigned int,struct resource*) ;
 int * of_get_address (struct device_node*,int,int *,unsigned int*) ;

int of_address_to_resource(struct device_node *dev, int index,
   struct resource *r)
{
 const u32 *addrp;
 u64 size;
 unsigned int flags;

 addrp = of_get_address(dev, index, &size, &flags);
 if (addrp == ((void*)0))
  return -EINVAL;
 return __of_address_to_resource(dev, addrp, size, flags, r);
}
