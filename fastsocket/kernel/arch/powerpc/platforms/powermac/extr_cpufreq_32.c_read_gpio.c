
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct device_node {int dummy; } ;


 scalar_t__ KEYLARGO_GPIO_LEVELS0 ;
 scalar_t__* of_get_property (struct device_node*,char*,int *) ;

__attribute__((used)) static u32 read_gpio(struct device_node *np)
{
 const u32 *reg = of_get_property(np, "reg", ((void*)0));
 u32 offset;

 if (reg == ((void*)0))
  return 0;






 offset = *reg;
 if (offset < KEYLARGO_GPIO_LEVELS0)
  offset += KEYLARGO_GPIO_LEVELS0;
 return offset;
}
