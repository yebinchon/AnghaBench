
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shash_desc {int dummy; } ;
struct rmd160_ctx {int buffer; int * state; scalar_t__ byte_count; } ;


 int RMD_H0 ;
 int RMD_H1 ;
 int RMD_H2 ;
 int RMD_H3 ;
 int RMD_H4 ;
 int memset (int ,int ,int) ;
 struct rmd160_ctx* shash_desc_ctx (struct shash_desc*) ;

__attribute__((used)) static int rmd160_init(struct shash_desc *desc)
{
 struct rmd160_ctx *rctx = shash_desc_ctx(desc);

 rctx->byte_count = 0;

 rctx->state[0] = RMD_H0;
 rctx->state[1] = RMD_H1;
 rctx->state[2] = RMD_H2;
 rctx->state[3] = RMD_H3;
 rctx->state[4] = RMD_H4;

 memset(rctx->buffer, 0, sizeof(rctx->buffer));

 return 0;
}
