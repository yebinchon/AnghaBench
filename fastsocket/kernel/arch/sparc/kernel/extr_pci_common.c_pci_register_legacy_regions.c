
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {char* name; void* flags; scalar_t__ start; scalar_t__ end; } ;


 int GFP_KERNEL ;
 void* IORESOURCE_BUSY ;
 struct resource* kzalloc (int,int ) ;
 int request_resource (struct resource*,struct resource*) ;

__attribute__((used)) static void pci_register_legacy_regions(struct resource *io_res,
     struct resource *mem_res)
{
 struct resource *p;


 p = kzalloc(sizeof(*p), GFP_KERNEL);
 if (!p)
  return;

 p->name = "Video RAM area";
 p->start = mem_res->start + 0xa0000UL;
 p->end = p->start + 0x1ffffUL;
 p->flags = IORESOURCE_BUSY;
 request_resource(mem_res, p);

 p = kzalloc(sizeof(*p), GFP_KERNEL);
 if (!p)
  return;

 p->name = "System ROM";
 p->start = mem_res->start + 0xf0000UL;
 p->end = p->start + 0xffffUL;
 p->flags = IORESOURCE_BUSY;
 request_resource(mem_res, p);

 p = kzalloc(sizeof(*p), GFP_KERNEL);
 if (!p)
  return;

 p->name = "Video ROM";
 p->start = mem_res->start + 0xc0000UL;
 p->end = p->start + 0x7fffUL;
 p->flags = IORESOURCE_BUSY;
 request_resource(mem_res, p);
}
