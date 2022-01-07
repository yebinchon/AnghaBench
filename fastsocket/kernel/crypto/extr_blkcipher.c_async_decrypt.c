
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct crypto_tfm {TYPE_1__* __crt_alg; } ;
struct blkcipher_desc {int flags; int info; int tfm; } ;
struct blkcipher_alg {int (* decrypt ) (struct blkcipher_desc*,int ,int ,int ) ;} ;
struct TYPE_4__ {int flags; struct crypto_tfm* tfm; } ;
struct ablkcipher_request {int nbytes; int src; int dst; TYPE_2__ base; int info; } ;
struct TYPE_3__ {struct blkcipher_alg cra_blkcipher; } ;


 int __crypto_blkcipher_cast (struct crypto_tfm*) ;
 int stub1 (struct blkcipher_desc*,int ,int ,int ) ;

__attribute__((used)) static int async_decrypt(struct ablkcipher_request *req)
{
 struct crypto_tfm *tfm = req->base.tfm;
 struct blkcipher_alg *alg = &tfm->__crt_alg->cra_blkcipher;
 struct blkcipher_desc desc = {
  .tfm = __crypto_blkcipher_cast(tfm),
  .info = req->info,
  .flags = req->base.flags,
 };

 return alg->decrypt(&desc, req->dst, req->src, req->nbytes);
}
