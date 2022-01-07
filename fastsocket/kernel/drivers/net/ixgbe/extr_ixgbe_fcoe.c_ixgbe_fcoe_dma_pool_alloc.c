
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbe_fcoe_ddp_pool {scalar_t__ noddp_ext_buff; scalar_t__ noddp; struct dma_pool* pool; } ;
struct ixgbe_fcoe {int ddp_pool; } ;
struct dma_pool {int dummy; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 int IXGBE_FCPTR_ALIGN ;
 int IXGBE_FCPTR_MAX ;
 int PAGE_SIZE ;
 struct dma_pool* dma_pool_create (char*,struct device*,int ,int ,int ) ;
 struct ixgbe_fcoe_ddp_pool* per_cpu_ptr (int ,unsigned int) ;
 int snprintf (char*,int,char*,unsigned int) ;

__attribute__((used)) static int ixgbe_fcoe_dma_pool_alloc(struct ixgbe_fcoe *fcoe,
         struct device *dev,
         unsigned int cpu)
{
 struct ixgbe_fcoe_ddp_pool *ddp_pool;
 struct dma_pool *pool;
 char pool_name[32];

 snprintf(pool_name, 32, "ixgbe_fcoe_ddp_%d", cpu);

 pool = dma_pool_create(pool_name, dev, IXGBE_FCPTR_MAX,
          IXGBE_FCPTR_ALIGN, PAGE_SIZE);
 if (!pool)
  return -ENOMEM;

 ddp_pool = per_cpu_ptr(fcoe->ddp_pool, cpu);
 ddp_pool->pool = pool;
 ddp_pool->noddp = 0;
 ddp_pool->noddp_ext_buff = 0;

 return 0;
}
