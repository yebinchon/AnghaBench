
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct crypto4xx_device {int alg_list; } ;
struct TYPE_2__ {int cipher; int hash; } ;
struct crypto4xx_alg_common {int type; TYPE_1__ u; } ;
struct crypto4xx_alg {int entry; struct crypto4xx_alg_common alg; struct crypto4xx_device* dev; } ;



 int ENOMEM ;
 int GFP_KERNEL ;
 int crypto_register_ahash (int *) ;
 int crypto_register_alg (int *) ;
 int kfree (struct crypto4xx_alg*) ;
 struct crypto4xx_alg* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;

int crypto4xx_register_alg(struct crypto4xx_device *sec_dev,
      struct crypto4xx_alg_common *crypto_alg,
      int array_size)
{
 struct crypto4xx_alg *alg;
 int i;
 int rc = 0;

 for (i = 0; i < array_size; i++) {
  alg = kzalloc(sizeof(struct crypto4xx_alg), GFP_KERNEL);
  if (!alg)
   return -ENOMEM;

  alg->alg = crypto_alg[i];
  alg->dev = sec_dev;

  switch (alg->alg.type) {
  case 128:
   rc = crypto_register_ahash(&alg->alg.u.hash);
   break;

  default:
   rc = crypto_register_alg(&alg->alg.u.cipher);
   break;
  }

  if (rc) {
   list_del(&alg->entry);
   kfree(alg);
  } else {
   list_add_tail(&alg->entry, &sec_dev->alg_list);
  }
 }

 return 0;
}
