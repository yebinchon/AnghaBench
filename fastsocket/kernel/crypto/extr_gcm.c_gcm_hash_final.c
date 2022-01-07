
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ahash_request {int dummy; } ;
struct TYPE_2__ {struct ahash_request ahreq; } ;
struct crypto_gcm_req_priv_ctx {int iauth_tag; TYPE_1__ u; } ;
struct aead_request {int dummy; } ;


 int aead_request_flags (struct aead_request*) ;
 int ahash_request_set_callback (struct ahash_request*,int ,int ,struct aead_request*) ;
 int ahash_request_set_crypt (struct ahash_request*,int *,int ,int ) ;
 int crypto_ahash_final (struct ahash_request*) ;
 int gcm_hash_final_done ;

__attribute__((used)) static int gcm_hash_final(struct aead_request *req,
     struct crypto_gcm_req_priv_ctx *pctx)
{
 struct ahash_request *ahreq = &pctx->u.ahreq;

 ahash_request_set_callback(ahreq, aead_request_flags(req),
       gcm_hash_final_done, req);
 ahash_request_set_crypt(ahreq, ((void*)0), pctx->iauth_tag, 0);

 return crypto_ahash_final(ahreq);
}
