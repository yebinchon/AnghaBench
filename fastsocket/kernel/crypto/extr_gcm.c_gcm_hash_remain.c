
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ahash_request {int dummy; } ;
struct TYPE_2__ {struct ahash_request ahreq; } ;
struct crypto_gcm_req_priv_ctx {int src; TYPE_1__ u; } ;
struct aead_request {int dummy; } ;
typedef int crypto_completion_t ;


 int aead_request_flags (struct aead_request*) ;
 int ahash_request_set_callback (struct ahash_request*,int ,int ,struct aead_request*) ;
 int ahash_request_set_crypt (struct ahash_request*,int ,int *,unsigned int) ;
 int crypto_ahash_update (struct ahash_request*) ;
 int gcm_zeroes ;
 int sg_init_one (int ,int ,unsigned int) ;

__attribute__((used)) static int gcm_hash_remain(struct aead_request *req,
      struct crypto_gcm_req_priv_ctx *pctx,
      unsigned int remain,
      crypto_completion_t complete)
{
 struct ahash_request *ahreq = &pctx->u.ahreq;

 ahash_request_set_callback(ahreq, aead_request_flags(req),
       complete, req);
 sg_init_one(pctx->src, gcm_zeroes, remain);
 ahash_request_set_crypt(ahreq, pctx->src, ((void*)0), remain);

 return crypto_ahash_update(ahreq);
}
