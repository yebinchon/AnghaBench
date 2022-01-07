
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct crypto_ablkcipher {int dummy; } ;
struct blkcipher_desc {int tfm; scalar_t__ flags; int info; } ;
struct async_helper_ctx {int cryptd_tfm; } ;
struct ablkcipher_request {int nbytes; int src; int dst; int info; } ;
struct TYPE_2__ {int (* encrypt ) (struct blkcipher_desc*,int ,int ,int ) ;} ;


 int cryptd_ablkcipher_child (int ) ;
 struct async_helper_ctx* crypto_ablkcipher_ctx (struct crypto_ablkcipher*) ;
 struct crypto_ablkcipher* crypto_ablkcipher_reqtfm (struct ablkcipher_request*) ;
 TYPE_1__* crypto_blkcipher_crt (int ) ;
 int stub1 (struct blkcipher_desc*,int ,int ,int ) ;

int __ablk_encrypt(struct ablkcipher_request *req)
{
 struct crypto_ablkcipher *tfm = crypto_ablkcipher_reqtfm(req);
 struct async_helper_ctx *ctx = crypto_ablkcipher_ctx(tfm);
 struct blkcipher_desc desc;

 desc.tfm = cryptd_ablkcipher_child(ctx->cryptd_tfm);
 desc.info = req->info;
 desc.flags = 0;

 return crypto_blkcipher_crt(desc.tfm)->encrypt(
  &desc, req->dst, req->src, req->nbytes);
}
