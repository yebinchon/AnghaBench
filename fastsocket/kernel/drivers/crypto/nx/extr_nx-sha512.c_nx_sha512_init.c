
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct shash_desc {TYPE_1__* tfm; } ;
struct sha512_state {scalar_t__ state; } ;
struct nx_sg {int dummy; } ;
struct TYPE_6__ {int outlen; } ;
struct nx_crypto_ctx {struct nx_sg* out_sg; TYPE_3__ op; TYPE_2__* ap; int csbcpb; TYPE_2__* props; } ;
struct TYPE_5__ {int sglen; } ;
struct TYPE_4__ {int base; } ;


 int HCOP_FC_SHA ;
 int NX_CPB_SET_DIGEST_SIZE (int ,int ) ;
 int NX_DS_SHA512 ;
 size_t NX_PROPS_SHA512 ;
 int SHA512_DIGEST_SIZE ;
 struct nx_crypto_ctx* crypto_tfm_ctx (int *) ;
 int memset (struct sha512_state*,int ,int) ;
 struct nx_sg* nx_build_sg_list (struct nx_sg*,int *,int ,int ) ;
 int nx_ctx_init (struct nx_crypto_ctx*,int ) ;
 struct sha512_state* shash_desc_ctx (struct shash_desc*) ;

__attribute__((used)) static int nx_sha512_init(struct shash_desc *desc)
{
 struct sha512_state *sctx = shash_desc_ctx(desc);
 struct nx_crypto_ctx *nx_ctx = crypto_tfm_ctx(&desc->tfm->base);
 struct nx_sg *out_sg;

 nx_ctx_init(nx_ctx, HCOP_FC_SHA);

 memset(sctx, 0, sizeof *sctx);

 nx_ctx->ap = &nx_ctx->props[NX_PROPS_SHA512];

 NX_CPB_SET_DIGEST_SIZE(nx_ctx->csbcpb, NX_DS_SHA512);
 out_sg = nx_build_sg_list(nx_ctx->out_sg, (u8 *)sctx->state,
      SHA512_DIGEST_SIZE, nx_ctx->ap->sglen);
 nx_ctx->op.outlen = (nx_ctx->out_sg - out_sg) * sizeof(struct nx_sg);

 return 0;
}
