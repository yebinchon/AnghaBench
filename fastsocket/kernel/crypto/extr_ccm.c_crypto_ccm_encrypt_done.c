
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_ccm_req_priv_ctx {int * odata; } ;
struct crypto_async_request {struct aead_request* data; } ;
struct crypto_aead {int dummy; } ;
struct aead_request {int cryptlen; int dst; } ;


 int aead_request_complete (struct aead_request*,int) ;
 int crypto_aead_authsize (struct crypto_aead*) ;
 struct crypto_aead* crypto_aead_reqtfm (struct aead_request*) ;
 struct crypto_ccm_req_priv_ctx* crypto_ccm_reqctx (struct aead_request*) ;
 int scatterwalk_map_and_copy (int *,int ,int ,int ,int) ;

__attribute__((used)) static void crypto_ccm_encrypt_done(struct crypto_async_request *areq, int err)
{
 struct aead_request *req = areq->data;
 struct crypto_aead *aead = crypto_aead_reqtfm(req);
 struct crypto_ccm_req_priv_ctx *pctx = crypto_ccm_reqctx(req);
 u8 *odata = pctx->odata;

 if (!err)
  scatterwalk_map_and_copy(odata, req->dst, req->cryptlen,
      crypto_aead_authsize(aead), 1);
 aead_request_complete(req, err);
}
