
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_grctx {int dummy; } ;


 int CP_SET ;
 int CP_SET_1 ;
 int cp_out (struct nouveau_grctx*,int) ;

__attribute__((used)) static inline void
_cp_set(struct nouveau_grctx *ctx, int flag, int state)
{
 cp_out(ctx, CP_SET | flag | (state ? CP_SET_1 : 0));
}
