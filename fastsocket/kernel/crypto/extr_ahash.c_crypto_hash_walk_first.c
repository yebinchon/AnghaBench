
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct crypto_hash_walk {int flags; int sg; int alignmask; int total; } ;
struct TYPE_2__ {int flags; } ;
struct ahash_request {TYPE_1__ base; int src; int nbytes; } ;


 int crypto_ahash_alignmask (int ) ;
 int crypto_ahash_reqtfm (struct ahash_request*) ;
 int hash_walk_new_entry (struct crypto_hash_walk*) ;

int crypto_hash_walk_first(struct ahash_request *req,
      struct crypto_hash_walk *walk)
{
 walk->total = req->nbytes;

 if (!walk->total)
  return 0;

 walk->alignmask = crypto_ahash_alignmask(crypto_ahash_reqtfm(req));
 walk->sg = req->src;
 walk->flags = req->base.flags;

 return hash_walk_new_entry(walk);
}
