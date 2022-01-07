
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_gcm_req_priv_ctx {int * auth_tag; } ;
struct crypto_aead {int dummy; } ;
struct aead_request {int cryptlen; int dst; } ;


 int crypto_aead_authsize (struct crypto_aead*) ;
 struct crypto_aead* crypto_aead_reqtfm (struct aead_request*) ;
 int scatterwalk_map_and_copy (int *,int ,int ,int ,int) ;

__attribute__((used)) static void gcm_enc_copy_hash(struct aead_request *req,
         struct crypto_gcm_req_priv_ctx *pctx)
{
 struct crypto_aead *aead = crypto_aead_reqtfm(req);
 u8 *auth_tag = pctx->auth_tag;

 scatterwalk_map_and_copy(auth_tag, req->dst, req->cryptlen,
     crypto_aead_authsize(aead), 1);
}
