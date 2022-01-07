
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lrw_table_ctx {scalar_t__ table; } ;


 int gf128mul_free_64k (scalar_t__) ;

void lrw_free_table(struct lrw_table_ctx *ctx)
{
 if (ctx->table)
  gf128mul_free_64k(ctx->table);
}
