
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct device_node {int dummy; } ;


 int __of_translate_address (struct device_node*,int const*,char*) ;

u64 of_translate_address(struct device_node *dev, const u32 *in_addr)
{
 return __of_translate_address(dev, in_addr, "ranges");
}
