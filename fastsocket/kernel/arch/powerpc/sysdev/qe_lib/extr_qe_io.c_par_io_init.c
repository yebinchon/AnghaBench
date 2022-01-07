
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct resource {scalar_t__ start; scalar_t__ end; } ;
struct device_node {int dummy; } ;


 int ioremap (scalar_t__,scalar_t__) ;
 int num_par_io_ports ;
 int of_address_to_resource (struct device_node*,int ,struct resource*) ;
 int * of_get_property (struct device_node*,char*,int *) ;
 int par_io ;

int par_io_init(struct device_node *np)
{
 struct resource res;
 int ret;
 const u32 *num_ports;


 ret = of_address_to_resource(np, 0, &res);
 if (ret)
  return ret;
 par_io = ioremap(res.start, res.end - res.start + 1);

 num_ports = of_get_property(np, "num-ports", ((void*)0));
 if (num_ports)
  num_par_io_ports = *num_ports;

 return 0;
}
