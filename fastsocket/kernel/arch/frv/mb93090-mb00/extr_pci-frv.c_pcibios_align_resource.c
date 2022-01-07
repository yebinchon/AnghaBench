
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int flags; int start; } ;
typedef int resource_size_t ;


 int IORESOURCE_IO ;

void
pcibios_align_resource(void *data, struct resource *res,
         resource_size_t size, resource_size_t align)
{
 if (res->flags & IORESOURCE_IO) {
  resource_size_t start = res->start;

  if (start & 0x300) {
   start = (start + 0x3ff) & ~0x3ff;
   res->start = start;
  }
 }
}
