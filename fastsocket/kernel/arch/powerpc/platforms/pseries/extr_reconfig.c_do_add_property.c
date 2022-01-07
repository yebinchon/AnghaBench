
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct property {int dummy; } ;
struct device_node {int dummy; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 struct property* new_property (char*,int,unsigned char*,int *) ;
 int * parse_next_property (char*,char*,char**,int*,unsigned char**) ;
 char* parse_node (char*,size_t,struct device_node**) ;
 int prom_add_property (struct device_node*,struct property*) ;

__attribute__((used)) static int do_add_property(char *buf, size_t bufsize)
{
 struct property *prop = ((void*)0);
 struct device_node *np;
 unsigned char *value;
 char *name, *end;
 int length;
 end = buf + bufsize;
 buf = parse_node(buf, bufsize, &np);

 if (!np)
  return -ENODEV;

 if (parse_next_property(buf, end, &name, &length, &value) == ((void*)0))
  return -EINVAL;

 prop = new_property(name, length, value, ((void*)0));
 if (!prop)
  return -ENOMEM;

 prom_add_property(np, prop);

 return 0;
}
