
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int start; } ;
struct platform_device {int dummy; } ;
struct TYPE_2__ {int mpsc_routing_base_p; void* mpsc_routing_base; int sdma_intr_base_p; void* sdma_intr_base; } ;


 int ENOMEM ;
 int IORESOURCE_MEM ;
 int MPSC_ROUTING_BASE_ORDER ;
 int MPSC_ROUTING_REG_BLOCK_SIZE ;
 int MPSC_SDMA_INTR_BASE_ORDER ;
 int MPSC_SDMA_INTR_REG_BLOCK_SIZE ;
 void* ioremap (int ,int ) ;
 int iounmap (void*) ;
 int mpsc_resource_err (char*) ;
 TYPE_1__ mpsc_shared_regs ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int release_mem_region (int ,int ) ;
 scalar_t__ request_mem_region (int ,int ,char*) ;

__attribute__((used)) static int mpsc_shared_map_regs(struct platform_device *pd)
{
 struct resource *r;

 if ((r = platform_get_resource(pd, IORESOURCE_MEM,
     MPSC_ROUTING_BASE_ORDER))
   && request_mem_region(r->start,
    MPSC_ROUTING_REG_BLOCK_SIZE,
    "mpsc_routing_regs")) {
  mpsc_shared_regs.mpsc_routing_base = ioremap(r->start,
    MPSC_ROUTING_REG_BLOCK_SIZE);
  mpsc_shared_regs.mpsc_routing_base_p = r->start;
 } else {
  mpsc_resource_err("MPSC routing base");
  return -ENOMEM;
 }

 if ((r = platform_get_resource(pd, IORESOURCE_MEM,
     MPSC_SDMA_INTR_BASE_ORDER))
   && request_mem_region(r->start,
    MPSC_SDMA_INTR_REG_BLOCK_SIZE,
    "sdma_intr_regs")) {
  mpsc_shared_regs.sdma_intr_base = ioremap(r->start,
   MPSC_SDMA_INTR_REG_BLOCK_SIZE);
  mpsc_shared_regs.sdma_intr_base_p = r->start;
 } else {
  iounmap(mpsc_shared_regs.mpsc_routing_base);
  release_mem_region(mpsc_shared_regs.mpsc_routing_base_p,
    MPSC_ROUTING_REG_BLOCK_SIZE);
  mpsc_resource_err("SDMA intr base");
  return -ENOMEM;
 }

 return 0;
}
