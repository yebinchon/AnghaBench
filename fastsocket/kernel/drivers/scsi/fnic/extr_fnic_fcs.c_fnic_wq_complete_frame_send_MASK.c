#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct vnic_wq_buf {struct sk_buff* os_buf; int /*<<< orphan*/  len; int /*<<< orphan*/  dma_addr; } ;
struct vnic_wq {int /*<<< orphan*/  vdev; } ;
struct sk_buff {int dummy; } ;
struct fnic {int /*<<< orphan*/  pdev; } ;
struct fc_frame {int dummy; } ;
struct cq_desc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct fnic* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct vnic_wq *wq,
					struct cq_desc *cq_desc,
					struct vnic_wq_buf *buf, void *opaque)
{
	struct sk_buff *skb = buf->os_buf;
	struct fc_frame *fp = (struct fc_frame *)skb;
	struct fnic *fnic = FUNC3(wq->vdev);

	FUNC2(fnic->pdev, buf->dma_addr,
			 buf->len, PCI_DMA_TODEVICE);
	FUNC0(FUNC1(fp));
	buf->os_buf = NULL;
}