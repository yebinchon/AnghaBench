
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 int EINVAL ;
 int lmb_add (unsigned long,unsigned int) ;
 void* of_get_property (struct device_node*,char*,int *) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int pseries_add_memory(struct device_node *np)
{
 const char *type;
 const unsigned int *regs;
 unsigned long base;
 unsigned int lmb_size;
 int ret = -EINVAL;




 type = of_get_property(np, "device_type", ((void*)0));
 if (type == ((void*)0) || strcmp(type, "memory") != 0)
  return 0;




 regs = of_get_property(np, "reg", ((void*)0));
 if (!regs)
  return ret;

 base = *(unsigned long *)regs;
 lmb_size = regs[3];




 ret = lmb_add(base, lmb_size);
 return (ret < 0) ? -EINVAL : 0;
}
