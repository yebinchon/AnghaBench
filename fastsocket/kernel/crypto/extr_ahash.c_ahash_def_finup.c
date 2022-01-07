
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct crypto_ahash {int (* update ) (struct ahash_request*) ;} ;
struct ahash_request_priv {scalar_t__ ubuf; struct ahash_request* data; int complete; int result; } ;
struct TYPE_2__ {int flags; struct ahash_request* data; int complete; } ;
struct ahash_request {struct ahash_request_priv* priv; TYPE_1__ base; int result; } ;


 int CRYPTO_TFM_REQ_MAY_SLEEP ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int GFP_KERNEL ;
 int PTR_ALIGN (int *,unsigned long) ;
 scalar_t__ ahash_align_buffer_size (unsigned int,unsigned long) ;
 int ahash_def_finup_done1 ;
 int ahash_def_finup_finish1 (struct ahash_request*,int ) ;
 unsigned long crypto_ahash_alignmask (struct crypto_ahash*) ;
 unsigned int crypto_ahash_digestsize (struct crypto_ahash*) ;
 struct crypto_ahash* crypto_ahash_reqtfm (struct ahash_request*) ;
 struct ahash_request_priv* kmalloc (scalar_t__,int ) ;
 int stub1 (struct ahash_request*) ;

__attribute__((used)) static int ahash_def_finup(struct ahash_request *req)
{
 struct crypto_ahash *tfm = crypto_ahash_reqtfm(req);
 unsigned long alignmask = crypto_ahash_alignmask(tfm);
 unsigned int ds = crypto_ahash_digestsize(tfm);
 struct ahash_request_priv *priv;

 priv = kmalloc(sizeof(*priv) + ahash_align_buffer_size(ds, alignmask),
         (req->base.flags & CRYPTO_TFM_REQ_MAY_SLEEP) ?
         GFP_KERNEL : GFP_ATOMIC);
 if (!priv)
  return -ENOMEM;

 priv->result = req->result;
 priv->complete = req->base.complete;
 priv->data = req->base.data;

 req->result = PTR_ALIGN((u8 *)priv->ubuf, alignmask + 1);
 req->base.complete = ahash_def_finup_done1;
 req->base.data = req;
 req->priv = priv;

 return ahash_def_finup_finish1(req, tfm->update(req));
}
