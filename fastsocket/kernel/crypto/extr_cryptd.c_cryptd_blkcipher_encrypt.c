
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct crypto_blkcipher {int dummy; } ;
struct crypto_async_request {int tfm; } ;
struct cryptd_blkcipher_ctx {struct crypto_blkcipher* child; } ;
struct TYPE_2__ {int encrypt; } ;


 int ablkcipher_request_cast (struct crypto_async_request*) ;
 int cryptd_blkcipher_crypt (int ,struct crypto_blkcipher*,int,int ) ;
 TYPE_1__* crypto_blkcipher_crt (struct crypto_blkcipher*) ;
 struct cryptd_blkcipher_ctx* crypto_tfm_ctx (int ) ;

__attribute__((used)) static void cryptd_blkcipher_encrypt(struct crypto_async_request *req, int err)
{
 struct cryptd_blkcipher_ctx *ctx = crypto_tfm_ctx(req->tfm);
 struct crypto_blkcipher *child = ctx->child;

 cryptd_blkcipher_crypt(ablkcipher_request_cast(req), child, err,
          crypto_blkcipher_crt(child)->encrypt);
}
