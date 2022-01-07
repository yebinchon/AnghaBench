
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct digest_alg {int (* dia_init ) (struct crypto_tfm*) ;} ;
struct crypto_tfm {TYPE_2__* __crt_alg; } ;
struct TYPE_3__ {struct crypto_tfm* tfm; } ;
struct ahash_request {TYPE_1__ base; } ;
struct TYPE_4__ {struct digest_alg cra_digest; } ;


 int stub1 (struct crypto_tfm*) ;

__attribute__((used)) static int digest_async_init(struct ahash_request *req)
{
 struct crypto_tfm *tfm = req->base.tfm;
 struct digest_alg *dalg = &tfm->__crt_alg->cra_digest;

 dalg->dia_init(tfm);
 return 0;
}
