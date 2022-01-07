
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_grctx {int ctxvals_pos; } ;


 int ALWAYS ;
 int AUTO_LOAD ;
 int AUTO_SAVE ;
 int CLEAR ;
 int CP_END ;
 int CP_NEXT_TO_CURRENT ;
 int CP_NEXT_TO_SWAP ;
 int IDLE ;
 int LOAD ;
 int NOT_PENDING ;
 int PENDING ;
 int SAVE ;
 int STATUS ;
 int SWAP_DIRECTION ;
 int TRUE ;
 int UNK54 ;
 int UNK57 ;
 int USER_LOAD ;
 int USER_SAVE ;
 int cp_bra (struct nouveau_grctx*,int ,int ,int ) ;
 int cp_check_load ;
 int cp_exit ;
 int cp_lsr (struct nouveau_grctx*,int) ;
 int cp_name (struct nouveau_grctx*,int ) ;
 int cp_out (struct nouveau_grctx*,int) ;
 int cp_pos (struct nouveau_grctx*,int) ;
 int cp_prepare_exit ;
 int cp_set (struct nouveau_grctx*,int ,int ) ;
 int cp_setup_auto_load ;
 int cp_setup_load ;
 int cp_setup_save ;
 int cp_swap_state ;
 int cp_wait (struct nouveau_grctx*,int ,int ) ;
 int nv40_graph_construct_general (struct nouveau_grctx*) ;
 int nv40_graph_construct_shader (struct nouveau_grctx*) ;
 int nv40_graph_construct_state3d (struct nouveau_grctx*) ;
 int nv40_graph_construct_state3d_2 (struct nouveau_grctx*) ;
 int nv40_graph_construct_state3d_3 (struct nouveau_grctx*) ;

__attribute__((used)) static void
nv40_grctx_generate(struct nouveau_grctx *ctx)
{

 cp_bra (ctx, AUTO_SAVE, PENDING, cp_setup_save);
 cp_bra (ctx, USER_SAVE, PENDING, cp_setup_save);

 cp_name(ctx, cp_check_load);
 cp_bra (ctx, AUTO_LOAD, PENDING, cp_setup_auto_load);
 cp_bra (ctx, USER_LOAD, PENDING, cp_setup_load);
 cp_bra (ctx, ALWAYS, TRUE, cp_exit);


 cp_name(ctx, cp_setup_auto_load);
 cp_wait(ctx, STATUS, IDLE);
 cp_out (ctx, CP_NEXT_TO_SWAP);
 cp_name(ctx, cp_setup_load);
 cp_wait(ctx, STATUS, IDLE);
 cp_set (ctx, SWAP_DIRECTION, LOAD);
 cp_out (ctx, 0x00910880);
 cp_out (ctx, 0x00901ffe);
 cp_out (ctx, 0x01940000);
 cp_lsr (ctx, 0x20);
 cp_out (ctx, 0x0060000b);
 cp_wait(ctx, UNK57, CLEAR);
 cp_out (ctx, 0x0060000c);
 cp_bra (ctx, ALWAYS, TRUE, cp_swap_state);


 cp_name(ctx, cp_setup_save);
 cp_set (ctx, SWAP_DIRECTION, SAVE);


 cp_name(ctx, cp_swap_state);
 cp_pos (ctx, 0x00020/4);
 nv40_graph_construct_general(ctx);
 cp_wait(ctx, STATUS, IDLE);


 cp_bra (ctx, UNK54, CLEAR, cp_prepare_exit);
 nv40_graph_construct_state3d(ctx);
 cp_wait(ctx, STATUS, IDLE);


 nv40_graph_construct_state3d_2(ctx);


 nv40_graph_construct_state3d_3(ctx);


 cp_pos (ctx, ctx->ctxvals_pos);
 nv40_graph_construct_shader(ctx);


 cp_name(ctx, cp_prepare_exit);
 cp_bra (ctx, SWAP_DIRECTION, SAVE, cp_check_load);
 cp_bra (ctx, USER_SAVE, PENDING, cp_exit);
 cp_out (ctx, CP_NEXT_TO_CURRENT);

 cp_name(ctx, cp_exit);
 cp_set (ctx, USER_SAVE, NOT_PENDING);
 cp_set (ctx, USER_LOAD, NOT_PENDING);
 cp_out (ctx, CP_END);
}
