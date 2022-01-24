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
typedef  int /*<<< orphan*/  u32 ;
struct scatterlist {int /*<<< orphan*/  length; int /*<<< orphan*/  offset; } ;
struct pd_uinfo {struct scatterlist* dest_va; scalar_t__ using_sd; int /*<<< orphan*/  async_req; } ;
struct crypto4xx_device {TYPE_1__* core_dev; } ;
struct crypto4xx_ctx {int dummy; } ;
struct ce_pd {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* complete ) (TYPE_2__*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  tfm; } ;
struct ablkcipher_request {TYPE_2__ base; int /*<<< orphan*/  dst; int /*<<< orphan*/  nbytes; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_3__ {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 struct ablkcipher_request* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct crypto4xx_device*,struct ce_pd*,struct pd_uinfo*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct crypto4xx_device*,struct pd_uinfo*) ; 
 struct crypto4xx_ctx* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC7(struct crypto4xx_device *dev,
				     struct pd_uinfo *pd_uinfo,
				     struct ce_pd *pd)
{
	struct crypto4xx_ctx *ctx;
	struct ablkcipher_request *ablk_req;
	struct scatterlist *dst;
	dma_addr_t addr;

	ablk_req = FUNC0(pd_uinfo->async_req);
	ctx  = FUNC3(ablk_req->base.tfm);

	if (pd_uinfo->using_sd) {
		FUNC1(dev, pd, pd_uinfo, ablk_req->nbytes,
					  ablk_req->dst);
	} else {
		dst = pd_uinfo->dest_va;
		addr = FUNC4(dev->core_dev->device, FUNC5(dst),
				    dst->offset, dst->length, DMA_FROM_DEVICE);
	}
	FUNC2(dev, pd_uinfo);
	if (ablk_req->base.complete != NULL)
		ablk_req->base.complete(&ablk_req->base, 0);

	return 0;
}