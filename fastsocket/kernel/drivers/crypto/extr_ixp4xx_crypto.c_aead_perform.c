
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct ix_sa_dir {int npe_ctx_idx; int npe_mode; int npe_ctx_phys; } ;
struct ixp_ctx {struct ix_sa_dir decrypt; struct ix_sa_dir encrypt; int configuring; } ;
struct crypto_aead {int dummy; } ;
struct TYPE_4__ {struct aead_request* aead_req; } ;
struct crypt_ctl {int crypt_offs; int crypt_len; unsigned int auth_len; int ctl_flags; int src_buf; scalar_t__ icv_rev_aes; int iv; scalar_t__ auth_offs; int init_len; int mode; int crypto_ctx; TYPE_2__ data; } ;
struct buffer_desc {scalar_t__ buf_len; scalar_t__ phys_addr; int phys_next; int next; } ;
struct TYPE_3__ {int flags; } ;
struct aead_request {unsigned int cryptlen; unsigned int assoclen; int * src; int * assoc; int * dst; int iv; TYPE_1__ base; } ;
struct aead_ctx {int encrypt; int buffer; int * hmac_virt; int ivlist; } ;
typedef int gfp_t ;


 int BUG () ;
 int BUG_ON (int) ;
 int CRYPTO_TFM_REQ_MAY_SLEEP ;
 int CTL_FLAG_PERFORM_AEAD ;
 int CTL_FLAG_UNUSED ;
 int DMA_BIDIRECTIONAL ;
 int DMA_TO_DEVICE ;
 int EAGAIN ;
 int EINPROGRESS ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int GFP_KERNEL ;
 int SEND_QID ;
 struct aead_ctx* aead_request_ctx (struct aead_request*) ;
 scalar_t__ atomic_read (int *) ;
 int buffer_pool ;
 struct buffer_desc* chainup_buffers (int ,int *,unsigned int,struct buffer_desc*,int ,int ) ;
 int crypt_virt2phys (struct crypt_ctl*) ;
 unsigned int crypto_aead_authsize (struct crypto_aead*) ;
 struct ixp_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 unsigned int crypto_aead_ivsize (struct crypto_aead*) ;
 struct crypto_aead* crypto_aead_reqtfm (struct aead_request*) ;
 int dev ;
 int * dma_pool_alloc (int ,int ,scalar_t__*) ;
 int dma_pool_free (int ,int *,scalar_t__) ;
 int free_buf_chain (int ,int ,int ) ;
 struct crypt_ctl* get_crypt_desc () ;
 int hmac_inconsistent (int *,unsigned int,unsigned int) ;
 int memcpy (int ,int ,unsigned int) ;
 int qmgr_put_entry (int ,int ) ;
 scalar_t__ qmgr_stat_full (int ) ;
 int qmgr_stat_overflow (int ) ;
 int scatterwalk_map_and_copy (int *,int *,unsigned int,unsigned int,int ) ;
 int sg_init_table (int *,int) ;
 int sg_set_buf (int *,int *,unsigned int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int aead_perform(struct aead_request *req, int encrypt,
  int cryptoffset, int eff_cryptlen, u8 *iv)
{
 struct crypto_aead *tfm = crypto_aead_reqtfm(req);
 struct ixp_ctx *ctx = crypto_aead_ctx(tfm);
 unsigned ivsize = crypto_aead_ivsize(tfm);
 unsigned authsize = crypto_aead_authsize(tfm);
 struct ix_sa_dir *dir;
 struct crypt_ctl *crypt;
 unsigned int cryptlen;
 struct buffer_desc *buf, src_hook;
 struct aead_ctx *req_ctx = aead_request_ctx(req);
 gfp_t flags = req->base.flags & CRYPTO_TFM_REQ_MAY_SLEEP ?
    GFP_KERNEL : GFP_ATOMIC;

 if (qmgr_stat_full(SEND_QID))
  return -EAGAIN;
 if (atomic_read(&ctx->configuring))
  return -EAGAIN;

 if (encrypt) {
  dir = &ctx->encrypt;
  cryptlen = req->cryptlen;
 } else {
  dir = &ctx->decrypt;

  cryptlen = req->cryptlen -authsize;
  eff_cryptlen -= authsize;
 }
 crypt = get_crypt_desc();
 if (!crypt)
  return -ENOMEM;

 crypt->data.aead_req = req;
 crypt->crypto_ctx = dir->npe_ctx_phys;
 crypt->mode = dir->npe_mode;
 crypt->init_len = dir->npe_ctx_idx;

 crypt->crypt_offs = cryptoffset;
 crypt->crypt_len = eff_cryptlen;

 crypt->auth_offs = 0;
 crypt->auth_len = req->assoclen + ivsize + cryptlen;
 BUG_ON(ivsize && !req->iv);
 memcpy(crypt->iv, req->iv, ivsize);

 if (req->src != req->dst) {
  BUG();
 }


 buf = chainup_buffers(dev, req->assoc, req->assoclen, &src_hook,
  flags, DMA_TO_DEVICE);
 req_ctx->buffer = src_hook.next;
 crypt->src_buf = src_hook.phys_next;
 if (!buf)
  goto out;

 sg_init_table(&req_ctx->ivlist, 1);
 sg_set_buf(&req_ctx->ivlist, iv, ivsize);
 buf = chainup_buffers(dev, &req_ctx->ivlist, ivsize, buf, flags,
   DMA_BIDIRECTIONAL);
 if (!buf)
  goto free_chain;
 if (unlikely(hmac_inconsistent(req->src, cryptlen, authsize))) {


  req_ctx->hmac_virt = dma_pool_alloc(buffer_pool, flags,
    &crypt->icv_rev_aes);
  if (unlikely(!req_ctx->hmac_virt))
   goto free_chain;
  if (!encrypt) {
   scatterwalk_map_and_copy(req_ctx->hmac_virt,
    req->src, cryptlen, authsize, 0);
  }
  req_ctx->encrypt = encrypt;
 } else {
  req_ctx->hmac_virt = ((void*)0);
 }

 buf = chainup_buffers(dev, req->src, cryptlen + authsize, buf, flags,
   DMA_BIDIRECTIONAL);
 if (!buf)
  goto free_hmac_virt;
 if (!req_ctx->hmac_virt) {
  crypt->icv_rev_aes = buf->phys_addr + buf->buf_len - authsize;
 }

 crypt->ctl_flags |= CTL_FLAG_PERFORM_AEAD;
 qmgr_put_entry(SEND_QID, crypt_virt2phys(crypt));
 BUG_ON(qmgr_stat_overflow(SEND_QID));
 return -EINPROGRESS;
free_hmac_virt:
 if (req_ctx->hmac_virt) {
  dma_pool_free(buffer_pool, req_ctx->hmac_virt,
    crypt->icv_rev_aes);
 }
free_chain:
 free_buf_chain(dev, req_ctx->buffer, crypt->src_buf);
out:
 crypt->ctl_flags = CTL_FLAG_UNUSED;
 return -ENOMEM;
}
