
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ix_sa_dir {int npe_ctx_idx; int npe_mode; int npe_ctx_phys; } ;
struct ixp_ctx {struct ix_sa_dir decrypt; struct ix_sa_dir encrypt; int configuring; } ;
struct crypto_ablkcipher {int dummy; } ;
struct TYPE_5__ {struct ablkcipher_request* ablk_req; } ;
struct crypt_ctl {unsigned int crypt_len; int ctl_flags; int dst_buf; int src_buf; int mode; int iv; scalar_t__ crypt_offs; int init_len; int crypto_ctx; TYPE_2__ data; } ;
struct buffer_desc {int phys_next; int * next; } ;
struct TYPE_4__ {int flags; } ;
struct ablkcipher_request {unsigned int nbytes; TYPE_3__* dst; TYPE_3__* src; int info; TYPE_1__ base; } ;
struct ablk_ctx {int * dst; int * src; } ;
typedef int gfp_t ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_6__ {unsigned int length; } ;


 int BUG_ON (int) ;
 int CRYPTO_TFM_REQ_MAY_SLEEP ;
 int CTL_FLAG_PERFORM_ABLK ;
 int CTL_FLAG_UNUSED ;
 int DMA_BIDIRECTIONAL ;
 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int EAGAIN ;
 int EINPROGRESS ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int GFP_KERNEL ;
 int NPE_OP_NOT_IN_PLACE ;
 int SEND_QID ;
 struct ablk_ctx* ablkcipher_request_ctx (struct ablkcipher_request*) ;
 scalar_t__ atomic_read (int *) ;
 int chainup_buffers (int ,TYPE_3__*,unsigned int,struct buffer_desc*,int ,int) ;
 int crypt_virt2phys (struct crypt_ctl*) ;
 struct ixp_ctx* crypto_ablkcipher_ctx (struct crypto_ablkcipher*) ;
 unsigned int crypto_ablkcipher_ivsize (struct crypto_ablkcipher*) ;
 struct crypto_ablkcipher* crypto_ablkcipher_reqtfm (struct ablkcipher_request*) ;
 int dev ;
 int free_buf_chain (int ,int *,int ) ;
 struct crypt_ctl* get_crypt_desc () ;
 int memcpy (int ,int ,unsigned int) ;
 int qmgr_put_entry (int ,int ) ;
 scalar_t__ qmgr_stat_full (int ) ;
 int qmgr_stat_overflow (int ) ;

__attribute__((used)) static int ablk_perform(struct ablkcipher_request *req, int encrypt)
{
 struct crypto_ablkcipher *tfm = crypto_ablkcipher_reqtfm(req);
 struct ixp_ctx *ctx = crypto_ablkcipher_ctx(tfm);
 unsigned ivsize = crypto_ablkcipher_ivsize(tfm);
 struct ix_sa_dir *dir;
 struct crypt_ctl *crypt;
 unsigned int nbytes = req->nbytes;
 enum dma_data_direction src_direction = DMA_BIDIRECTIONAL;
 struct ablk_ctx *req_ctx = ablkcipher_request_ctx(req);
 struct buffer_desc src_hook;
 gfp_t flags = req->base.flags & CRYPTO_TFM_REQ_MAY_SLEEP ?
    GFP_KERNEL : GFP_ATOMIC;

 if (qmgr_stat_full(SEND_QID))
  return -EAGAIN;
 if (atomic_read(&ctx->configuring))
  return -EAGAIN;

 dir = encrypt ? &ctx->encrypt : &ctx->decrypt;

 crypt = get_crypt_desc();
 if (!crypt)
  return -ENOMEM;

 crypt->data.ablk_req = req;
 crypt->crypto_ctx = dir->npe_ctx_phys;
 crypt->mode = dir->npe_mode;
 crypt->init_len = dir->npe_ctx_idx;

 crypt->crypt_offs = 0;
 crypt->crypt_len = nbytes;

 BUG_ON(ivsize && !req->info);
 memcpy(crypt->iv, req->info, ivsize);
 if (req->src != req->dst) {
  struct buffer_desc dst_hook;
  crypt->mode |= NPE_OP_NOT_IN_PLACE;


  BUG_ON(req->dst->length < nbytes);
  req_ctx->dst = ((void*)0);
  if (!chainup_buffers(dev, req->dst, nbytes, &dst_hook,
     flags, DMA_FROM_DEVICE))
   goto free_buf_dest;
  src_direction = DMA_TO_DEVICE;
  req_ctx->dst = dst_hook.next;
  crypt->dst_buf = dst_hook.phys_next;
 } else {
  req_ctx->dst = ((void*)0);
 }
 req_ctx->src = ((void*)0);
 if (!chainup_buffers(dev, req->src, nbytes, &src_hook,
    flags, src_direction))
  goto free_buf_src;

 req_ctx->src = src_hook.next;
 crypt->src_buf = src_hook.phys_next;
 crypt->ctl_flags |= CTL_FLAG_PERFORM_ABLK;
 qmgr_put_entry(SEND_QID, crypt_virt2phys(crypt));
 BUG_ON(qmgr_stat_overflow(SEND_QID));
 return -EINPROGRESS;

free_buf_src:
 free_buf_chain(dev, req_ctx->src, crypt->src_buf);
free_buf_dest:
 if (req->src != req->dst) {
  free_buf_chain(dev, req_ctx->dst, crypt->dst_buf);
 }
 crypt->ctl_flags = CTL_FLAG_UNUSED;
 return -ENOMEM;
}
