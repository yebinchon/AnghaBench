
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {unsigned long start; } ;


 int EBUSY ;
 int ENODEV ;
 int ENOMEM ;
 int GPMC_CS_NUM ;
 int GPMC_SECTION_SHIFT ;
 int adjust_resource (struct resource*,unsigned long,unsigned long) ;
 int allocate_resource (int *,struct resource*,unsigned long,int ,int ,unsigned long,int *,int *) ;
 int gpmc_cs_enable_mem (int,unsigned long,int ) ;
 struct resource* gpmc_cs_mem ;
 scalar_t__ gpmc_cs_mem_enabled (int) ;
 scalar_t__ gpmc_cs_reserved (int) ;
 int gpmc_cs_set_reserved (int,int) ;
 unsigned long gpmc_mem_align (unsigned long) ;
 int gpmc_mem_lock ;
 int gpmc_mem_root ;
 int resource_size (struct resource*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int gpmc_cs_request(int cs, unsigned long size, unsigned long *base)
{
 struct resource *res = &gpmc_cs_mem[cs];
 int r = -1;

 if (cs > GPMC_CS_NUM)
  return -ENODEV;

 size = gpmc_mem_align(size);
 if (size > (1 << GPMC_SECTION_SHIFT))
  return -ENOMEM;

 spin_lock(&gpmc_mem_lock);
 if (gpmc_cs_reserved(cs)) {
  r = -EBUSY;
  goto out;
 }
 if (gpmc_cs_mem_enabled(cs))
  r = adjust_resource(res, res->start & ~(size - 1), size);
 if (r < 0)
  r = allocate_resource(&gpmc_mem_root, res, size, 0, ~0,
          size, ((void*)0), ((void*)0));
 if (r < 0)
  goto out;

 gpmc_cs_enable_mem(cs, res->start, resource_size(res));
 *base = res->start;
 gpmc_cs_set_reserved(cs, 1);
out:
 spin_unlock(&gpmc_mem_lock);
 return r;
}
