
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iser_mem_reg {int * mem_h; } ;
struct ib_pool_fmr {int dummy; } ;


 int ib_fmr_pool_unmap (struct ib_pool_fmr*) ;
 int iser_dbg (char*,int *) ;
 int iser_err (char*,int) ;

void iser_unreg_mem(struct iser_mem_reg *reg)
{
 int ret;

 iser_dbg("PHYSICAL Mem.Unregister mem_h %p\n",reg->mem_h);

 ret = ib_fmr_pool_unmap((struct ib_pool_fmr *)reg->mem_h);
 if (ret)
  iser_err("ib_fmr_pool_unmap failed %d\n", ret);

 reg->mem_h = ((void*)0);
}
