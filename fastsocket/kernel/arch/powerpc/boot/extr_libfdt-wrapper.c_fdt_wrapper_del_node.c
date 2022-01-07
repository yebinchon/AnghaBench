
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int devp_offset (void const*) ;
 int fdt ;
 int fdt_del_node (int ,int ) ;

__attribute__((used)) static int fdt_wrapper_del_node(const void *devp)
{
 return fdt_del_node(fdt, devp_offset(devp));
}
