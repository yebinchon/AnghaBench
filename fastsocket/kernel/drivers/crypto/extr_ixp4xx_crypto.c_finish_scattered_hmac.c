
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct crypto_aead {int dummy; } ;
struct TYPE_2__ {struct aead_request* aead_req; } ;
struct crypt_ctl {int icv_rev_aes; TYPE_1__ data; } ;
struct aead_request {int cryptlen; int src; } ;
struct aead_ctx {int hmac_virt; scalar_t__ encrypt; } ;


 struct aead_ctx* aead_request_ctx (struct aead_request*) ;
 int buffer_pool ;
 int crypto_aead_authsize (struct crypto_aead*) ;
 struct crypto_aead* crypto_aead_reqtfm (struct aead_request*) ;
 int dma_pool_free (int ,int ,int ) ;
 int scatterwalk_map_and_copy (int ,int ,int,int,int) ;

__attribute__((used)) static void finish_scattered_hmac(struct crypt_ctl *crypt)
{
 struct aead_request *req = crypt->data.aead_req;
 struct aead_ctx *req_ctx = aead_request_ctx(req);
 struct crypto_aead *tfm = crypto_aead_reqtfm(req);
 int authsize = crypto_aead_authsize(tfm);
 int decryptlen = req->cryptlen - authsize;

 if (req_ctx->encrypt) {
  scatterwalk_map_and_copy(req_ctx->hmac_virt,
   req->src, decryptlen, authsize, 1);
 }
 dma_pool_free(buffer_pool, req_ctx->hmac_virt, crypt->icv_rev_aes);
}
