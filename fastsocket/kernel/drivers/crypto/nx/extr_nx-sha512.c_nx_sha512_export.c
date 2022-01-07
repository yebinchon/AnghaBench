
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct shash_desc {TYPE_1__* tfm; } ;
struct sha512_state {int* count; int * state; int * buf; } ;
struct TYPE_5__ {int message_bit_length_lo; int message_bit_length_hi; int * message_digest; } ;
struct TYPE_6__ {TYPE_2__ sha512; } ;
struct nx_csbcpb {TYPE_3__ cpb; } ;
struct nx_crypto_ctx {scalar_t__ csbcpb; } ;
struct TYPE_4__ {int base; } ;


 int SHA512_DIGEST_SIZE ;
 int SHA512_H0 ;
 int SHA512_H1 ;
 int SHA512_H2 ;
 int SHA512_H3 ;
 int SHA512_H4 ;
 int SHA512_H5 ;
 int SHA512_H6 ;
 int SHA512_H7 ;
 struct nx_crypto_ctx* crypto_tfm_ctx (int *) ;
 int memcpy (int *,int *,int) ;
 struct sha512_state* shash_desc_ctx (struct shash_desc*) ;

__attribute__((used)) static int nx_sha512_export(struct shash_desc *desc, void *out)
{
 struct sha512_state *sctx = shash_desc_ctx(desc);
 struct nx_crypto_ctx *nx_ctx = crypto_tfm_ctx(&desc->tfm->base);
 struct nx_csbcpb *csbcpb = (struct nx_csbcpb *)nx_ctx->csbcpb;
 struct sha512_state *octx = out;



 octx->count[0] = csbcpb->cpb.sha512.message_bit_length_lo >> 3 |
    ((csbcpb->cpb.sha512.message_bit_length_hi & 7) << 61);
 octx->count[1] = csbcpb->cpb.sha512.message_bit_length_hi >> 3;

 octx->count[0] += sctx->count[0];
 if (octx->count[0] < sctx->count[0])
  octx->count[1]++;

 memcpy(octx->buf, sctx->buf, sizeof(octx->buf));




 if (csbcpb->cpb.sha512.message_bit_length_hi ||
     csbcpb->cpb.sha512.message_bit_length_lo)
  memcpy(octx->state, csbcpb->cpb.sha512.message_digest,
         SHA512_DIGEST_SIZE);
 else {
  octx->state[0] = SHA512_H0;
  octx->state[1] = SHA512_H1;
  octx->state[2] = SHA512_H2;
  octx->state[3] = SHA512_H3;
  octx->state[4] = SHA512_H4;
  octx->state[5] = SHA512_H5;
  octx->state[6] = SHA512_H6;
  octx->state[7] = SHA512_H7;
 }

 return 0;
}
