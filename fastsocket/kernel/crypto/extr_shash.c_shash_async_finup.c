
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct shash_desc {int flags; struct crypto_shash* tfm; } ;
struct crypto_shash {int dummy; } ;
struct TYPE_2__ {int flags; } ;
struct ahash_request {TYPE_1__ base; } ;


 struct shash_desc* ahash_request_ctx (struct ahash_request*) ;
 struct crypto_shash** crypto_ahash_ctx (int ) ;
 int crypto_ahash_reqtfm (struct ahash_request*) ;
 int shash_ahash_finup (struct ahash_request*,struct shash_desc*) ;

__attribute__((used)) static int shash_async_finup(struct ahash_request *req)
{
 struct crypto_shash **ctx = crypto_ahash_ctx(crypto_ahash_reqtfm(req));
 struct shash_desc *desc = ahash_request_ctx(req);

 desc->tfm = *ctx;
 desc->flags = req->base.flags;

 return shash_ahash_finup(req, desc);
}
