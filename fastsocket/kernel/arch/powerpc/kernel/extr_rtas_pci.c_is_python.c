
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 char* of_get_property (struct device_node*,char*,int *) ;
 scalar_t__ strstr (char const*,char*) ;

__attribute__((used)) static int is_python(struct device_node *dev)
{
 const char *model = of_get_property(dev, "model", ((void*)0));

 if (model && strstr(model, "Python"))
  return 1;

 return 0;
}
