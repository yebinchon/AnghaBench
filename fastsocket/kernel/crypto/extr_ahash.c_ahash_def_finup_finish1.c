
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; int complete; } ;
struct ahash_request {TYPE_1__ base; } ;
struct TYPE_4__ {int (* final ) (struct ahash_request*) ;} ;


 int CRYPTO_TFM_REQ_MAY_SLEEP ;
 int ahash_def_finup_done2 ;
 int ahash_def_finup_finish2 (struct ahash_request*,int) ;
 TYPE_2__* crypto_ahash_reqtfm (struct ahash_request*) ;
 int stub1 (struct ahash_request*) ;

__attribute__((used)) static int ahash_def_finup_finish1(struct ahash_request *req, int err)
{
 if (err)
  goto out;

 req->base.complete = ahash_def_finup_done2;
 req->base.flags &= ~CRYPTO_TFM_REQ_MAY_SLEEP;
 err = crypto_ahash_reqtfm(req)->final(req);

out:
 ahash_def_finup_finish2(req, err);
 return err;
}
