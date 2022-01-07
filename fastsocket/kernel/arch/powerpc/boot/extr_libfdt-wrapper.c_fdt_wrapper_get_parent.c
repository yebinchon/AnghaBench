
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int devp_offset (void const*) ;
 int fdt ;
 int fdt_parent_offset (int ,int ) ;
 void* offset_devp (int ) ;

__attribute__((used)) static void *fdt_wrapper_get_parent(const void *devp)
{
 return offset_devp(fdt_parent_offset(fdt, devp_offset(devp)));
}
