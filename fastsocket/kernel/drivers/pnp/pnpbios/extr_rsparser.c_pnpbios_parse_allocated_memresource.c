
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnp_dev {int dummy; } ;


 int IORESOURCE_DISABLED ;
 int pnp_add_mem_resource (struct pnp_dev*,int,int,int) ;

__attribute__((used)) static void pnpbios_parse_allocated_memresource(struct pnp_dev *dev,
      int start, int len)
{
 int flags = 0;
 int end = start + len - 1;

 if (len <= 0)
  flags |= IORESOURCE_DISABLED;

 pnp_add_mem_resource(dev, start, end, flags);
}
