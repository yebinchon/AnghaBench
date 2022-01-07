
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;






 int pnp_resource_type (struct resource*) ;

char *pnp_resource_type_name(struct resource *res)
{
 switch (pnp_resource_type(res)) {
 case 130:
  return "io";
 case 128:
  return "mem";
 case 129:
  return "irq";
 case 131:
  return "dma";
 }
 return ((void*)0);
}
