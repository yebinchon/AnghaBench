
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x_func_sp_drv_ops {int (* reset_hw_cmn ) (struct bnx2x*) ;} ;
struct bnx2x {int dummy; } ;


 int bnx2x_func_reset_port (struct bnx2x*,struct bnx2x_func_sp_drv_ops const*) ;
 int stub1 (struct bnx2x*) ;

__attribute__((used)) static inline void bnx2x_func_reset_cmn(struct bnx2x *bp,
     const struct bnx2x_func_sp_drv_ops *drv)
{
 bnx2x_func_reset_port(bp, drv);
 drv->reset_hw_cmn(bp);
}
