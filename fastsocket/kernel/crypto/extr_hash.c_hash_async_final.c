
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hash_desc {int flags; int tfm; } ;
struct hash_alg {int (* final ) (struct hash_desc*,int ) ;} ;
struct crypto_tfm {TYPE_1__* __crt_alg; } ;
struct TYPE_4__ {int flags; struct crypto_tfm* tfm; } ;
struct ahash_request {int result; TYPE_2__ base; } ;
struct TYPE_3__ {struct hash_alg cra_hash; } ;


 int __crypto_hash_cast (struct crypto_tfm*) ;
 int stub1 (struct hash_desc*,int ) ;

__attribute__((used)) static int hash_async_final(struct ahash_request *req)
{
 struct crypto_tfm *tfm = req->base.tfm;
 struct hash_alg *alg = &tfm->__crt_alg->cra_hash;
 struct hash_desc desc = {
  .tfm = __crypto_hash_cast(tfm),
  .flags = req->base.flags,
 };

 return alg->final(&desc, req->result);
}
