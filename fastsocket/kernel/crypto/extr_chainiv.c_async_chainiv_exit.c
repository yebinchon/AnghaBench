
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct crypto_tfm {int dummy; } ;
struct TYPE_2__ {scalar_t__ qlen; } ;
struct async_chainiv_ctx {TYPE_1__ queue; int state; } ;


 int BUG_ON (int) ;
 int CHAINIV_STATE_INUSE ;
 struct async_chainiv_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int skcipher_geniv_exit (struct crypto_tfm*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void async_chainiv_exit(struct crypto_tfm *tfm)
{
 struct async_chainiv_ctx *ctx = crypto_tfm_ctx(tfm);

 BUG_ON(test_bit(CHAINIV_STATE_INUSE, &ctx->state) || ctx->queue.qlen);

 skcipher_geniv_exit(tfm);
}
