
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int info; } ;
struct skcipher_givcrypt_request {TYPE_1__ creq; } ;
struct crypto_ablkcipher {int dummy; } ;
struct ablkcipher_request {int info; } ;


 int EINPROGRESS ;
 int crypto_ablkcipher_ivsize (struct crypto_ablkcipher*) ;
 int kfree (int ) ;
 int memcpy (int ,int ,int ) ;
 struct ablkcipher_request* skcipher_givcrypt_reqctx (struct skcipher_givcrypt_request*) ;
 struct crypto_ablkcipher* skcipher_givcrypt_reqtfm (struct skcipher_givcrypt_request*) ;

__attribute__((used)) static void seqiv_complete2(struct skcipher_givcrypt_request *req, int err)
{
 struct ablkcipher_request *subreq = skcipher_givcrypt_reqctx(req);
 struct crypto_ablkcipher *geniv;

 if (err == -EINPROGRESS)
  return;

 if (err)
  goto out;

 geniv = skcipher_givcrypt_reqtfm(req);
 memcpy(req->creq.info, subreq->info, crypto_ablkcipher_ivsize(geniv));

out:
 kfree(subreq->info);
}
