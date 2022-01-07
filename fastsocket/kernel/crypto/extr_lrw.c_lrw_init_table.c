
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct lrw_table_ctx {int table; TYPE_1__* mulinc; } ;
struct TYPE_5__ {int member_0; } ;
typedef TYPE_1__ be128 ;


 int ENOMEM ;
 int gf128mul_64k_bbe (TYPE_1__*,int ) ;
 int gf128mul_free_64k (int ) ;
 int gf128mul_init_64k_bbe (TYPE_1__*) ;
 int setbit128_bbe (TYPE_1__*,int) ;

int lrw_init_table(struct lrw_table_ctx *ctx, const u8 *tweak)
{
 be128 tmp = { 0 };
 int i;

 if (ctx->table)
  gf128mul_free_64k(ctx->table);


 ctx->table = gf128mul_init_64k_bbe((be128 *)tweak);
 if (!ctx->table)
  return -ENOMEM;


 for (i = 0; i < 128; i++) {
  setbit128_bbe(&tmp, i);
  ctx->mulinc[i] = tmp;
  gf128mul_64k_bbe(&ctx->mulinc[i], ctx->table);
 }

 return 0;
}
