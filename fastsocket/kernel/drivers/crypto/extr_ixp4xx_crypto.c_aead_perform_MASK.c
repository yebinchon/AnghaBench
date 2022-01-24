#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct ix_sa_dir {int /*<<< orphan*/  npe_ctx_idx; int /*<<< orphan*/  npe_mode; int /*<<< orphan*/  npe_ctx_phys; } ;
struct ixp_ctx {struct ix_sa_dir decrypt; struct ix_sa_dir encrypt; int /*<<< orphan*/  configuring; } ;
struct crypto_aead {int dummy; } ;
struct TYPE_4__ {struct aead_request* aead_req; } ;
struct crypt_ctl {int crypt_offs; int crypt_len; unsigned int auth_len; int /*<<< orphan*/  ctl_flags; int /*<<< orphan*/  src_buf; scalar_t__ icv_rev_aes; int /*<<< orphan*/  iv; scalar_t__ auth_offs; int /*<<< orphan*/  init_len; int /*<<< orphan*/  mode; int /*<<< orphan*/  crypto_ctx; TYPE_2__ data; } ;
struct buffer_desc {scalar_t__ buf_len; scalar_t__ phys_addr; int /*<<< orphan*/  phys_next; int /*<<< orphan*/  next; } ;
struct TYPE_3__ {int flags; } ;
struct aead_request {unsigned int cryptlen; unsigned int assoclen; int /*<<< orphan*/ * src; int /*<<< orphan*/ * assoc; int /*<<< orphan*/ * dst; int /*<<< orphan*/  iv; TYPE_1__ base; } ;
struct aead_ctx {int encrypt; int /*<<< orphan*/  buffer; int /*<<< orphan*/ * hmac_virt; int /*<<< orphan*/  ivlist; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int CRYPTO_TFM_REQ_MAY_SLEEP ; 
 int /*<<< orphan*/  CTL_FLAG_PERFORM_AEAD ; 
 int /*<<< orphan*/  CTL_FLAG_UNUSED ; 
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int EAGAIN ; 
 int EINPROGRESS ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SEND_QID ; 
 struct aead_ctx* FUNC2 (struct aead_request*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  buffer_pool ; 
 struct buffer_desc* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int,struct buffer_desc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct crypt_ctl*) ; 
 unsigned int FUNC6 (struct crypto_aead*) ; 
 struct ixp_ctx* FUNC7 (struct crypto_aead*) ; 
 unsigned int FUNC8 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC9 (struct aead_request*) ; 
 int /*<<< orphan*/  dev ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct crypt_ctl* FUNC13 () ; 
 int FUNC14 (int /*<<< orphan*/ *,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 int FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 
 scalar_t__ FUNC22 (int) ; 

__attribute__((used)) static int FUNC23(struct aead_request *req, int encrypt,
		int cryptoffset, int eff_cryptlen, u8 *iv)
{
	struct crypto_aead *tfm = FUNC9(req);
	struct ixp_ctx *ctx = FUNC7(tfm);
	unsigned ivsize = FUNC8(tfm);
	unsigned authsize = FUNC6(tfm);
	struct ix_sa_dir *dir;
	struct crypt_ctl *crypt;
	unsigned int cryptlen;
	struct buffer_desc *buf, src_hook;
	struct aead_ctx *req_ctx = FUNC2(req);
	gfp_t flags = req->base.flags & CRYPTO_TFM_REQ_MAY_SLEEP ?
				GFP_KERNEL : GFP_ATOMIC;

	if (FUNC17(SEND_QID))
		return -EAGAIN;
	if (FUNC3(&ctx->configuring))
		return -EAGAIN;

	if (encrypt) {
		dir = &ctx->encrypt;
		cryptlen = req->cryptlen;
	} else {
		dir = &ctx->decrypt;
		/* req->cryptlen includes the authsize when decrypting */
		cryptlen = req->cryptlen -authsize;
		eff_cryptlen -= authsize;
	}
	crypt = FUNC13();
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
	FUNC1(ivsize && !req->iv);
	FUNC15(crypt->iv, req->iv, ivsize);

	if (req->src != req->dst) {
		FUNC0(); /* -ENOTSUP because of my lazyness */
	}

	/* ASSOC data */
	buf = FUNC4(dev, req->assoc, req->assoclen, &src_hook,
		flags, DMA_TO_DEVICE);
	req_ctx->buffer = src_hook.next;
	crypt->src_buf = src_hook.phys_next;
	if (!buf)
		goto out;
	/* IV */
	FUNC20(&req_ctx->ivlist, 1);
	FUNC21(&req_ctx->ivlist, iv, ivsize);
	buf = FUNC4(dev, &req_ctx->ivlist, ivsize, buf, flags,
			DMA_BIDIRECTIONAL);
	if (!buf)
		goto free_chain;
	if (FUNC22(FUNC14(req->src, cryptlen, authsize))) {
		/* The 12 hmac bytes are scattered,
		 * we need to copy them into a safe buffer */
		req_ctx->hmac_virt = FUNC10(buffer_pool, flags,
				&crypt->icv_rev_aes);
		if (FUNC22(!req_ctx->hmac_virt))
			goto free_chain;
		if (!encrypt) {
			FUNC19(req_ctx->hmac_virt,
				req->src, cryptlen, authsize, 0);
		}
		req_ctx->encrypt = encrypt;
	} else {
		req_ctx->hmac_virt = NULL;
	}
	/* Crypt */
	buf = FUNC4(dev, req->src, cryptlen + authsize, buf, flags,
			DMA_BIDIRECTIONAL);
	if (!buf)
		goto free_hmac_virt;
	if (!req_ctx->hmac_virt) {
		crypt->icv_rev_aes = buf->phys_addr + buf->buf_len - authsize;
	}

	crypt->ctl_flags |= CTL_FLAG_PERFORM_AEAD;
	FUNC16(SEND_QID, FUNC5(crypt));
	FUNC1(FUNC18(SEND_QID));
	return -EINPROGRESS;
free_hmac_virt:
	if (req_ctx->hmac_virt) {
		FUNC11(buffer_pool, req_ctx->hmac_virt,
				crypt->icv_rev_aes);
	}
free_chain:
	FUNC12(dev, req_ctx->buffer, crypt->src_buf);
out:
	crypt->ctl_flags = CTL_FLAG_UNUSED;
	return -ENOMEM;
}