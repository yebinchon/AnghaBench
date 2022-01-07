
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {unsigned long start; unsigned long end; } ;


 struct resource* gpmc_cs_mem ;
 unsigned long gpmc_mem_align (unsigned long) ;
 int gpmc_mem_lock ;
 int gpmc_mem_root ;
 int request_resource (int *,struct resource*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int gpmc_cs_insert_mem(int cs, unsigned long base, unsigned long size)
{
 struct resource *res = &gpmc_cs_mem[cs];
 int r;

 size = gpmc_mem_align(size);
 spin_lock(&gpmc_mem_lock);
 res->start = base;
 res->end = base + size - 1;
 r = request_resource(&gpmc_mem_root, res);
 spin_unlock(&gpmc_mem_lock);

 return r;
}
