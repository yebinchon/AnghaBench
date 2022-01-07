
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nouveau_grctx {int dummy; } ;


 int CP_LOAD_SR ;
 int cp_out (struct nouveau_grctx*,int) ;

__attribute__((used)) static inline void
cp_lsr(struct nouveau_grctx *ctx, u32 val)
{
 cp_out(ctx, CP_LOAD_SR | val);
}
