
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct scatterlist {unsigned long offset; int length; } ;
struct TYPE_5__ {int flags; } ;
struct hifn_request_context {scalar_t__ mode; int type; int op; int ivsize; scalar_t__ iv; TYPE_2__ walk; } ;
struct hifn_device {scalar_t__ started; int name; int lock; int active; int snum; } ;
struct hifn_context {int keysize; int key; struct hifn_device* dev; } ;
struct TYPE_4__ {int tfm; } ;
struct ablkcipher_request {unsigned int nbytes; struct scatterlist* dst; int src; TYPE_1__ base; } ;


 scalar_t__ ACRYPTO_MODE_ECB ;
 int ASYNC_FLAGS_MISALIGNED ;
 int EAGAIN ;
 int EINVAL ;
 int GFP_ATOMIC ;
 int HIFN_DEFAULT_ACTIVE_NUM ;
 int HIFN_D_DST_DALIGN ;
 scalar_t__ HIFN_QUEUE_LENGTH ;
 int IS_ALIGNED (unsigned long,int ) ;
 struct hifn_request_context* ablkcipher_request_ctx (struct ablkcipher_request*) ;
 int ablkcipher_walk (struct ablkcipher_request*,TYPE_2__*) ;
 int ablkcipher_walk_init (TYPE_2__*,unsigned int,int ) ;
 struct hifn_context* crypto_tfm_ctx (int ) ;
 int hifn_setup_dma (struct hifn_device*,struct hifn_context*,struct hifn_request_context*,int ,struct scatterlist*,unsigned int,struct ablkcipher_request*) ;
 unsigned long min (int ,unsigned int) ;
 int printk (char*,int ,scalar_t__,int ,int ,int ,scalar_t__,int ,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int hifn_setup_session(struct ablkcipher_request *req)
{
 struct hifn_context *ctx = crypto_tfm_ctx(req->base.tfm);
 struct hifn_request_context *rctx = ablkcipher_request_ctx(req);
 struct hifn_device *dev = ctx->dev;
 unsigned long dlen, flags;
 unsigned int nbytes = req->nbytes, idx = 0;
 int err = -EINVAL, sg_num;
 struct scatterlist *dst;

 if (rctx->iv && !rctx->ivsize && rctx->mode != ACRYPTO_MODE_ECB)
  goto err_out_exit;

 rctx->walk.flags = 0;

 while (nbytes) {
  dst = &req->dst[idx];
  dlen = min(dst->length, nbytes);

  if (!IS_ALIGNED(dst->offset, HIFN_D_DST_DALIGN) ||
      !IS_ALIGNED(dlen, HIFN_D_DST_DALIGN))
   rctx->walk.flags |= ASYNC_FLAGS_MISALIGNED;

  nbytes -= dlen;
  idx++;
 }

 if (rctx->walk.flags & ASYNC_FLAGS_MISALIGNED) {
  err = ablkcipher_walk_init(&rctx->walk, idx, GFP_ATOMIC);
  if (err < 0)
   return err;
 }

 sg_num = ablkcipher_walk(req, &rctx->walk);
 if (sg_num < 0) {
  err = sg_num;
  goto err_out_exit;
 }

 spin_lock_irqsave(&dev->lock, flags);
 if (dev->started + sg_num > HIFN_QUEUE_LENGTH) {
  err = -EAGAIN;
  goto err_out;
 }

 err = hifn_setup_dma(dev, ctx, rctx, req->src, req->dst, req->nbytes, req);
 if (err)
  goto err_out;

 dev->snum++;

 dev->active = HIFN_DEFAULT_ACTIVE_NUM;
 spin_unlock_irqrestore(&dev->lock, flags);

 return 0;

err_out:
 spin_unlock_irqrestore(&dev->lock, flags);
err_out_exit:
 if (err) {
  printk("%s: iv: %p [%d], key: %p [%d], mode: %u, op: %u, "
    "type: %u, err: %d.\n",
   dev->name, rctx->iv, rctx->ivsize,
   ctx->key, ctx->keysize,
   rctx->mode, rctx->op, rctx->type, err);
 }

 return err;
}
