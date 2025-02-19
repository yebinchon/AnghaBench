
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct shash_desc {int flags; struct crypto_shash* tfm; } ;
struct ghash_async_ctx {struct cryptd_ahash* cryptd_tfm; } ;
struct crypto_shash {int dummy; } ;
struct crypto_ahash {int dummy; } ;
struct cryptd_ahash {int base; } ;
struct TYPE_2__ {int flags; } ;
struct ahash_request {TYPE_1__ base; } ;


 struct ahash_request* ahash_request_ctx (struct ahash_request*) ;
 int ahash_request_set_tfm (struct ahash_request*,int *) ;
 struct crypto_shash* cryptd_ahash_child (struct cryptd_ahash*) ;
 struct shash_desc* cryptd_shash_desc (struct ahash_request*) ;
 struct ghash_async_ctx* crypto_ahash_ctx (struct crypto_ahash*) ;
 int crypto_ahash_digest (struct ahash_request*) ;
 struct crypto_ahash* crypto_ahash_reqtfm (struct ahash_request*) ;
 int irq_fpu_usable () ;
 int memcpy (struct ahash_request*,struct ahash_request*,int) ;
 int shash_ahash_digest (struct ahash_request*,struct shash_desc*) ;

__attribute__((used)) static int ghash_async_digest(struct ahash_request *req)
{
 struct crypto_ahash *tfm = crypto_ahash_reqtfm(req);
 struct ghash_async_ctx *ctx = crypto_ahash_ctx(tfm);
 struct ahash_request *cryptd_req = ahash_request_ctx(req);
 struct cryptd_ahash *cryptd_tfm = ctx->cryptd_tfm;

 if (!irq_fpu_usable()) {
  memcpy(cryptd_req, req, sizeof(*req));
  ahash_request_set_tfm(cryptd_req, &cryptd_tfm->base);
  return crypto_ahash_digest(cryptd_req);
 } else {
  struct shash_desc *desc = cryptd_shash_desc(cryptd_req);
  struct crypto_shash *child = cryptd_ahash_child(cryptd_tfm);

  desc->tfm = child;
  desc->flags = req->base.flags;
  return shash_ahash_digest(req, desc);
 }
}
