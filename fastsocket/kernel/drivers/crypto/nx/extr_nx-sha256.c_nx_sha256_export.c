
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct shash_desc {TYPE_1__* tfm; } ;
struct sha256_state {int * state; int * buf; scalar_t__ count; } ;
struct TYPE_5__ {int message_bit_length; int * message_digest; } ;
struct TYPE_6__ {TYPE_2__ sha256; } ;
struct nx_csbcpb {TYPE_3__ cpb; } ;
struct nx_crypto_ctx {scalar_t__ csbcpb; } ;
struct TYPE_4__ {int base; } ;


 int SHA256_DIGEST_SIZE ;
 int SHA256_H0 ;
 int SHA256_H1 ;
 int SHA256_H2 ;
 int SHA256_H3 ;
 int SHA256_H4 ;
 int SHA256_H5 ;
 int SHA256_H6 ;
 int SHA256_H7 ;
 struct nx_crypto_ctx* crypto_tfm_ctx (int *) ;
 int memcpy (int *,int *,int) ;
 struct sha256_state* shash_desc_ctx (struct shash_desc*) ;

__attribute__((used)) static int nx_sha256_export(struct shash_desc *desc, void *out)
{
 struct sha256_state *sctx = shash_desc_ctx(desc);
 struct nx_crypto_ctx *nx_ctx = crypto_tfm_ctx(&desc->tfm->base);
 struct nx_csbcpb *csbcpb = (struct nx_csbcpb *)nx_ctx->csbcpb;
 struct sha256_state *octx = out;

 octx->count = sctx->count +
        (csbcpb->cpb.sha256.message_bit_length / 8);
 memcpy(octx->buf, sctx->buf, sizeof(octx->buf));




 if (csbcpb->cpb.sha256.message_bit_length)
  memcpy(octx->state, csbcpb->cpb.sha256.message_digest,
         SHA256_DIGEST_SIZE);
 else {
  octx->state[0] = SHA256_H0;
  octx->state[1] = SHA256_H1;
  octx->state[2] = SHA256_H2;
  octx->state[3] = SHA256_H3;
  octx->state[4] = SHA256_H4;
  octx->state[5] = SHA256_H5;
  octx->state[6] = SHA256_H6;
  octx->state[7] = SHA256_H7;
 }

 return 0;
}
