#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct crypto_ahash {int /*<<< orphan*/  (* update ) (struct ahash_request*) ;} ;
struct ahash_request_priv {scalar_t__ ubuf; struct ahash_request* data; int /*<<< orphan*/  complete; int /*<<< orphan*/  result; } ;
struct TYPE_2__ {int flags; struct ahash_request* data; int /*<<< orphan*/  complete; } ;
struct ahash_request {struct ahash_request_priv* priv; TYPE_1__ base; int /*<<< orphan*/  result; } ;

/* Variables and functions */
 int CRYPTO_TFM_REQ_MAY_SLEEP ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC1 (unsigned int,unsigned long) ; 
 int /*<<< orphan*/  ahash_def_finup_done1 ; 
 int FUNC2 (struct ahash_request*,int /*<<< orphan*/ ) ; 
 unsigned long FUNC3 (struct crypto_ahash*) ; 
 unsigned int FUNC4 (struct crypto_ahash*) ; 
 struct crypto_ahash* FUNC5 (struct ahash_request*) ; 
 struct ahash_request_priv* FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ahash_request*) ; 

__attribute__((used)) static int FUNC8(struct ahash_request *req)
{
	struct crypto_ahash *tfm = FUNC5(req);
	unsigned long alignmask = FUNC3(tfm);
	unsigned int ds = FUNC4(tfm);
	struct ahash_request_priv *priv;

	priv = FUNC6(sizeof(*priv) + FUNC1(ds, alignmask),
		       (req->base.flags & CRYPTO_TFM_REQ_MAY_SLEEP) ?
		       GFP_KERNEL : GFP_ATOMIC);
	if (!priv)
		return -ENOMEM;

	priv->result = req->result;
	priv->complete = req->base.complete;
	priv->data = req->base.data;

	req->result = FUNC0((u8 *)priv->ubuf, alignmask + 1);
	req->base.complete = ahash_def_finup_done1;
	req->base.data = req;
	req->priv = priv;

	return FUNC2(req, tfm->update(req));
}