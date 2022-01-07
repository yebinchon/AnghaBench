
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int start; } ;
struct platform_device {int dummy; } ;
struct mpsc_port_info {int * sdma_base; int * mpsc_base; int brg_base_p; void* brg_base; int sdma_base_p; int mpsc_base_p; } ;


 int ENOMEM ;
 int IORESOURCE_MEM ;
 int MPSC_BASE_ORDER ;
 int MPSC_BRG_BASE_ORDER ;
 int MPSC_BRG_REG_BLOCK_SIZE ;
 int MPSC_REG_BLOCK_SIZE ;
 int MPSC_SDMA_BASE_ORDER ;
 int MPSC_SDMA_REG_BLOCK_SIZE ;
 void* ioremap (int ,int ) ;
 int iounmap (int *) ;
 int mpsc_resource_err (char*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 scalar_t__ request_mem_region (int ,int ,char*) ;

__attribute__((used)) static int mpsc_drv_map_regs(struct mpsc_port_info *pi,
  struct platform_device *pd)
{
 struct resource *r;

 if ((r = platform_get_resource(pd, IORESOURCE_MEM, MPSC_BASE_ORDER))
   && request_mem_region(r->start, MPSC_REG_BLOCK_SIZE,
   "mpsc_regs")) {
  pi->mpsc_base = ioremap(r->start, MPSC_REG_BLOCK_SIZE);
  pi->mpsc_base_p = r->start;
 } else {
  mpsc_resource_err("MPSC base");
  goto err;
 }

 if ((r = platform_get_resource(pd, IORESOURCE_MEM,
     MPSC_SDMA_BASE_ORDER))
   && request_mem_region(r->start,
    MPSC_SDMA_REG_BLOCK_SIZE, "sdma_regs")) {
  pi->sdma_base = ioremap(r->start,MPSC_SDMA_REG_BLOCK_SIZE);
  pi->sdma_base_p = r->start;
 } else {
  mpsc_resource_err("SDMA base");
  if (pi->mpsc_base) {
   iounmap(pi->mpsc_base);
   pi->mpsc_base = ((void*)0);
  }
  goto err;
 }

 if ((r = platform_get_resource(pd,IORESOURCE_MEM,MPSC_BRG_BASE_ORDER))
   && request_mem_region(r->start,
    MPSC_BRG_REG_BLOCK_SIZE, "brg_regs")) {
  pi->brg_base = ioremap(r->start, MPSC_BRG_REG_BLOCK_SIZE);
  pi->brg_base_p = r->start;
 } else {
  mpsc_resource_err("BRG base");
  if (pi->mpsc_base) {
   iounmap(pi->mpsc_base);
   pi->mpsc_base = ((void*)0);
  }
  if (pi->sdma_base) {
   iounmap(pi->sdma_base);
   pi->sdma_base = ((void*)0);
  }
  goto err;
 }
 return 0;

err:
 return -ENOMEM;
}
