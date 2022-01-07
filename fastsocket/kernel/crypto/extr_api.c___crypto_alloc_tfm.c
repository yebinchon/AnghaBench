
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct crypto_tfm {int exit; struct crypto_alg* __crt_alg; } ;
struct crypto_alg {int (* cra_init ) (struct crypto_tfm*) ;} ;


 int EAGAIN ;
 int ENOMEM ;
 struct crypto_tfm* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int crypto_ctxsize (struct crypto_alg*,int ,int ) ;
 int crypto_exit_ops (struct crypto_tfm*) ;
 int crypto_init_ops (struct crypto_tfm*,int ,int ) ;
 int crypto_shoot_alg (struct crypto_alg*) ;
 int kfree (struct crypto_tfm*) ;
 struct crypto_tfm* kzalloc (unsigned int,int ) ;
 int stub1 (struct crypto_tfm*) ;

struct crypto_tfm *__crypto_alloc_tfm(struct crypto_alg *alg, u32 type,
          u32 mask)
{
 struct crypto_tfm *tfm = ((void*)0);
 unsigned int tfm_size;
 int err = -ENOMEM;

 tfm_size = sizeof(*tfm) + crypto_ctxsize(alg, type, mask);
 tfm = kzalloc(tfm_size, GFP_KERNEL);
 if (tfm == ((void*)0))
  goto out_err;

 tfm->__crt_alg = alg;

 err = crypto_init_ops(tfm, type, mask);
 if (err)
  goto out_free_tfm;

 if (!tfm->exit && alg->cra_init && (err = alg->cra_init(tfm)))
  goto cra_init_failed;

 goto out;

cra_init_failed:
 crypto_exit_ops(tfm);
out_free_tfm:
 if (err == -EAGAIN)
  crypto_shoot_alg(alg);
 kfree(tfm);
out_err:
 tfm = ERR_PTR(err);
out:
 return tfm;
}
