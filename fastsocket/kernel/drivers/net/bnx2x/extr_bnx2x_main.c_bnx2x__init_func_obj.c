
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x {int func_obj; } ;


 int bnx2x_func_sp_drv ;
 int bnx2x_init_func_obj (struct bnx2x*,int *,int ,int ,int ,int ,int *) ;
 int bnx2x_setup_dmae (struct bnx2x*) ;
 int bnx2x_sp (struct bnx2x*,int ) ;
 int bnx2x_sp_mapping (struct bnx2x*,int ) ;
 int func_afex_rdata ;
 int func_rdata ;

void bnx2x__init_func_obj(struct bnx2x *bp)
{

 bnx2x_setup_dmae(bp);

 bnx2x_init_func_obj(bp, &bp->func_obj,
       bnx2x_sp(bp, func_rdata),
       bnx2x_sp_mapping(bp, func_rdata),
       bnx2x_sp(bp, func_afex_rdata),
       bnx2x_sp_mapping(bp, func_afex_rdata),
       &bnx2x_func_sp_drv);
}
