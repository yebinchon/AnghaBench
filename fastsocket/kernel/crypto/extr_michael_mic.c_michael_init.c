
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shash_desc {int tfm; } ;
struct michael_mic_desc_ctx {int r; int l; scalar_t__ pending_len; } ;
struct michael_mic_ctx {int r; int l; } ;


 struct michael_mic_ctx* crypto_shash_ctx (int ) ;
 struct michael_mic_desc_ctx* shash_desc_ctx (struct shash_desc*) ;

__attribute__((used)) static int michael_init(struct shash_desc *desc)
{
 struct michael_mic_desc_ctx *mctx = shash_desc_ctx(desc);
 struct michael_mic_ctx *ctx = crypto_shash_ctx(desc->tfm);
 mctx->pending_len = 0;
 mctx->l = ctx->l;
 mctx->r = ctx->r;

 return 0;
}
