
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pd_uinfo {int async_req; } ;
struct crypto4xx_device {int dummy; } ;
struct crypto4xx_ctx {int dummy; } ;
struct TYPE_2__ {int (* complete ) (TYPE_1__*,int ) ;int tfm; } ;
struct ahash_request {TYPE_1__ base; } ;


 struct ahash_request* ahash_request_cast (int ) ;
 int crypto4xx_copy_digest_to_dst (struct pd_uinfo*,struct crypto4xx_ctx*) ;
 int crypto4xx_ret_sg_desc (struct crypto4xx_device*,struct pd_uinfo*) ;
 struct crypto4xx_ctx* crypto_tfm_ctx (int ) ;
 int stub1 (TYPE_1__*,int ) ;

__attribute__((used)) static u32 crypto4xx_ahash_done(struct crypto4xx_device *dev,
    struct pd_uinfo *pd_uinfo)
{
 struct crypto4xx_ctx *ctx;
 struct ahash_request *ahash_req;

 ahash_req = ahash_request_cast(pd_uinfo->async_req);
 ctx = crypto_tfm_ctx(ahash_req->base.tfm);

 crypto4xx_copy_digest_to_dst(pd_uinfo,
         crypto_tfm_ctx(ahash_req->base.tfm));
 crypto4xx_ret_sg_desc(dev, pd_uinfo);

 if (ahash_req->base.complete != ((void*)0))
  ahash_req->base.complete(&ahash_req->base, 0);

 return 0;
}
