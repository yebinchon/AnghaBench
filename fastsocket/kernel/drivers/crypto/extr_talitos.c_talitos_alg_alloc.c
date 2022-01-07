
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct talitos_ctx {int dummy; } ;
struct crypto_alg {int cra_ctxsize; scalar_t__ cra_alignmask; int cra_priority; int cra_init; int cra_module; } ;
struct talitos_crypto_alg {struct device* dev; int desc_hdr_template; struct crypto_alg crypto_alg; } ;
struct talitos_alg_template {int desc_hdr_template; struct crypto_alg alg; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 struct talitos_crypto_alg* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int TALITOS_CRA_PRIORITY ;
 int THIS_MODULE ;
 struct talitos_crypto_alg* kzalloc (int,int ) ;
 int talitos_cra_init ;

__attribute__((used)) static struct talitos_crypto_alg *talitos_alg_alloc(struct device *dev,
          struct talitos_alg_template
                 *template)
{
 struct talitos_crypto_alg *t_alg;
 struct crypto_alg *alg;

 t_alg = kzalloc(sizeof(struct talitos_crypto_alg), GFP_KERNEL);
 if (!t_alg)
  return ERR_PTR(-ENOMEM);

 alg = &t_alg->crypto_alg;
 *alg = template->alg;

 alg->cra_module = THIS_MODULE;
 alg->cra_init = talitos_cra_init;
 alg->cra_priority = TALITOS_CRA_PRIORITY;
 alg->cra_alignmask = 0;
 alg->cra_ctxsize = sizeof(struct talitos_ctx);

 t_alg->desc_hdr_template = template->desc_hdr_template;
 t_alg->dev = dev;

 return t_alg;
}
