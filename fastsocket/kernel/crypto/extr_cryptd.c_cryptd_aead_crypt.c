
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct crypto_aead {int dummy; } ;
struct cryptd_aead_request_ctx {int (* complete ) (TYPE_1__*,int) ;} ;
struct TYPE_2__ {int (* complete ) (TYPE_1__*,int) ;} ;
struct aead_request {TYPE_1__ base; } ;


 int EINPROGRESS ;
 struct cryptd_aead_request_ctx* aead_request_ctx (struct aead_request*) ;
 int aead_request_set_tfm (struct aead_request*,struct crypto_aead*) ;
 int local_bh_disable () ;
 int local_bh_enable () ;
 int stub1 (TYPE_1__*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void cryptd_aead_crypt(struct aead_request *req,
   struct crypto_aead *child,
   int err,
   int (*crypt)(struct aead_request *req))
{
 struct cryptd_aead_request_ctx *rctx;
 rctx = aead_request_ctx(req);

 if (unlikely(err == -EINPROGRESS))
  goto out;
 aead_request_set_tfm(req, child);
 err = crypt( req );
 req->base.complete = rctx->complete;
out:
 local_bh_disable();
 rctx->complete(&req->base, err);
 local_bh_enable();
}
