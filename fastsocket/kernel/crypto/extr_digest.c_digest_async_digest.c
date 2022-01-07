
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hash_desc {int flags; int tfm; } ;
struct crypto_tfm {int dummy; } ;
struct TYPE_2__ {int flags; struct crypto_tfm* tfm; } ;
struct ahash_request {int result; int nbytes; int src; TYPE_1__ base; } ;


 int __crypto_hash_cast (struct crypto_tfm*) ;
 int digest (struct hash_desc*,int ,int ,int ) ;

__attribute__((used)) static int digest_async_digest(struct ahash_request *req)
{
 struct crypto_tfm *tfm = req->base.tfm;
 struct hash_desc desc = {
  .tfm = __crypto_hash_cast(tfm),
  .flags = req->base.flags,
 };

 return digest(&desc, req->src, req->nbytes, req->result);
}
