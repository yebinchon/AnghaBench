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
typedef  scalar_t__ u16 ;
struct vnic_rq {int /*<<< orphan*/  vdev; } ;
struct sk_buff {int /*<<< orphan*/  data; } ;
struct fnic {int /*<<< orphan*/  pdev; TYPE_1__* lport; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_2__ {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FC_FRAME_HEADROOM ; 
 scalar_t__ FC_FRAME_TAILROOM ; 
 scalar_t__ FC_MAX_FRAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  KERN_DEBUG ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 struct sk_buff* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct vnic_rq*,struct sk_buff*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 struct fnic* FUNC8 (int /*<<< orphan*/ ) ; 

int FUNC9(struct vnic_rq *rq)
{
	struct fnic *fnic = FUNC8(rq->vdev);
	struct sk_buff *skb;
	u16 len;
	dma_addr_t pa;

	len = FC_FRAME_HEADROOM + FC_MAX_FRAME + FC_FRAME_TAILROOM;
	skb = FUNC1(len);
	if (!skb) {
		FUNC0(KERN_DEBUG, fnic->lport->host,
			     "Unable to allocate RQ sk_buff\n");
		return -ENOMEM;
	}
	FUNC5(skb);
	FUNC7(skb);
	FUNC6(skb);
	FUNC4(skb, len);
	pa = FUNC3(fnic->pdev, skb->data, len, PCI_DMA_FROMDEVICE);
	FUNC2(rq, skb, pa, len);
	return 0;
}