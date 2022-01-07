
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ahash_request {int dummy; } ;
struct TYPE_2__ {int digest; } ;


 int crypto_ahash_op (struct ahash_request*,int ) ;
 TYPE_1__* crypto_ahash_reqtfm (struct ahash_request*) ;

int crypto_ahash_digest(struct ahash_request *req)
{
 return crypto_ahash_op(req, crypto_ahash_reqtfm(req)->digest);
}
