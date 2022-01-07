
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnp_mem {int flags; scalar_t__ size; scalar_t__ align; scalar_t__ max; scalar_t__ min; } ;
typedef int pnp_info_buffer_t ;





 int IORESOURCE_MEM_CACHEABLE ;
 int IORESOURCE_MEM_EXPANSIONROM ;
 int IORESOURCE_MEM_RANGELENGTH ;
 int IORESOURCE_MEM_SHADOWABLE ;
 int IORESOURCE_MEM_TYPE_MASK ;
 int IORESOURCE_MEM_WRITEABLE ;
 int pnp_printf (int *,char*,...) ;

__attribute__((used)) static void pnp_print_mem(pnp_info_buffer_t * buffer, char *space,
     struct pnp_mem *mem)
{
 char *s;

 pnp_printf(buffer, "%sMemory %#llx-%#llx, align %#llx, size %#llx",
     space, (unsigned long long) mem->min,
     (unsigned long long) mem->max,
     (unsigned long long) mem->align,
     (unsigned long long) mem->size);
 if (mem->flags & IORESOURCE_MEM_WRITEABLE)
  pnp_printf(buffer, ", writeable");
 if (mem->flags & IORESOURCE_MEM_CACHEABLE)
  pnp_printf(buffer, ", cacheable");
 if (mem->flags & IORESOURCE_MEM_RANGELENGTH)
  pnp_printf(buffer, ", range-length");
 if (mem->flags & IORESOURCE_MEM_SHADOWABLE)
  pnp_printf(buffer, ", shadowable");
 if (mem->flags & IORESOURCE_MEM_EXPANSIONROM)
  pnp_printf(buffer, ", expansion ROM");
 switch (mem->flags & IORESOURCE_MEM_TYPE_MASK) {
 case 128:
  s = "8-bit";
  break;
 case 129:
  s = "8-bit&16-bit";
  break;
 case 130:
  s = "32-bit";
  break;
 default:
  s = "16-bit";
 }
 pnp_printf(buffer, ", %s\n", s);
}
