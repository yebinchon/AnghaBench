
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct skcipher_givcrypt_request {int giv; } ;
struct eseqiv_request_ctx {scalar_t__ tail; } ;
struct crypto_ablkcipher {int dummy; } ;


 int PTR_ALIGN (int *,scalar_t__) ;
 scalar_t__ crypto_ablkcipher_alignmask (struct crypto_ablkcipher*) ;
 int crypto_ablkcipher_ivsize (struct crypto_ablkcipher*) ;
 int memcpy (int ,int ,int ) ;
 struct eseqiv_request_ctx* skcipher_givcrypt_reqctx (struct skcipher_givcrypt_request*) ;
 struct crypto_ablkcipher* skcipher_givcrypt_reqtfm (struct skcipher_givcrypt_request*) ;

__attribute__((used)) static void eseqiv_complete2(struct skcipher_givcrypt_request *req)
{
 struct crypto_ablkcipher *geniv = skcipher_givcrypt_reqtfm(req);
 struct eseqiv_request_ctx *reqctx = skcipher_givcrypt_reqctx(req);

 memcpy(req->giv, PTR_ALIGN((u8 *)reqctx->tail,
    crypto_ablkcipher_alignmask(geniv) + 1),
        crypto_ablkcipher_ivsize(geniv));
}
