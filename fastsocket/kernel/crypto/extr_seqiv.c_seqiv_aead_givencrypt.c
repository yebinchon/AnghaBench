
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct seqiv_ctx {int dummy; } ;
struct crypto_aead {int dummy; } ;
struct TYPE_2__ {int flags; void* data; int complete; } ;
struct aead_request {int * iv; int assoclen; int assoc; int cryptlen; int dst; int src; TYPE_1__ base; } ;
struct aead_givcrypt_request {int giv; int seq; struct aead_request areq; } ;
typedef int crypto_completion_t ;


 int CRYPTO_TFM_REQ_MAY_SLEEP ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int GFP_KERNEL ;
 int IS_ALIGNED (unsigned long,scalar_t__) ;
 int aead_geniv_base (struct crypto_aead*) ;
 struct aead_request* aead_givcrypt_reqctx (struct aead_givcrypt_request*) ;
 struct crypto_aead* aead_givcrypt_reqtfm (struct aead_givcrypt_request*) ;
 int aead_request_set_assoc (struct aead_request*,int ,int ) ;
 int aead_request_set_callback (struct aead_request*,int,int ,void*) ;
 int aead_request_set_crypt (struct aead_request*,int ,int ,int ,int *) ;
 int aead_request_set_tfm (struct aead_request*,int ) ;
 scalar_t__ crypto_aead_alignmask (struct crypto_aead*) ;
 struct seqiv_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 int crypto_aead_encrypt (struct aead_request*) ;
 unsigned int crypto_aead_ivsize (struct crypto_aead*) ;
 int * kmalloc (unsigned int,int ) ;
 int memcpy (int ,int *,unsigned int) ;
 int seqiv_aead_complete ;
 int seqiv_aead_complete2 (struct aead_givcrypt_request*,int) ;
 int seqiv_geniv (struct seqiv_ctx*,int *,int ,unsigned int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int seqiv_aead_givencrypt(struct aead_givcrypt_request *req)
{
 struct crypto_aead *geniv = aead_givcrypt_reqtfm(req);
 struct seqiv_ctx *ctx = crypto_aead_ctx(geniv);
 struct aead_request *areq = &req->areq;
 struct aead_request *subreq = aead_givcrypt_reqctx(req);
 crypto_completion_t complete;
 void *data;
 u8 *info;
 unsigned int ivsize;
 int err;

 aead_request_set_tfm(subreq, aead_geniv_base(geniv));

 complete = areq->base.complete;
 data = areq->base.data;
 info = areq->iv;

 ivsize = crypto_aead_ivsize(geniv);

 if (unlikely(!IS_ALIGNED((unsigned long)info,
     crypto_aead_alignmask(geniv) + 1))) {
  info = kmalloc(ivsize, areq->base.flags &
           CRYPTO_TFM_REQ_MAY_SLEEP ? GFP_KERNEL:
          GFP_ATOMIC);
  if (!info)
   return -ENOMEM;

  complete = seqiv_aead_complete;
  data = req;
 }

 aead_request_set_callback(subreq, areq->base.flags, complete, data);
 aead_request_set_crypt(subreq, areq->src, areq->dst, areq->cryptlen,
          info);
 aead_request_set_assoc(subreq, areq->assoc, areq->assoclen);

 seqiv_geniv(ctx, info, req->seq, ivsize);
 memcpy(req->giv, info, ivsize);

 err = crypto_aead_encrypt(subreq);
 if (unlikely(info != areq->iv))
  seqiv_aead_complete2(req, err);
 return err;
}
