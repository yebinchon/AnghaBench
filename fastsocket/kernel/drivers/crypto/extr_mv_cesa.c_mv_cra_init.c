
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mv_req_ctx {int dummy; } ;
struct TYPE_2__ {int reqsize; } ;
struct crypto_tfm {TYPE_1__ crt_ablkcipher; } ;



__attribute__((used)) static int mv_cra_init(struct crypto_tfm *tfm)
{
 tfm->crt_ablkcipher.reqsize = sizeof(struct mv_req_ctx);
 return 0;
}
