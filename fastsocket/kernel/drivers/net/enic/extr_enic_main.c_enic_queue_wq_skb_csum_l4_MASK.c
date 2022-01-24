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
struct vnic_wq {int dummy; } ;
struct sk_buff {unsigned int len; unsigned int csum_offset; int /*<<< orphan*/  data; } ;
struct enic {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int /*<<< orphan*/  FUNC0 (struct vnic_wq*,struct sk_buff*,int /*<<< orphan*/ ,unsigned int,unsigned int,unsigned int,int,unsigned int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct enic*,struct vnic_wq*,struct sk_buff*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (struct sk_buff*) ; 
 unsigned int FUNC4 (struct sk_buff*) ; 

__attribute__((used)) static inline void FUNC5(struct enic *enic,
	struct vnic_wq *wq, struct sk_buff *skb,
	int vlan_tag_insert, unsigned int vlan_tag, int loopback)
{
	unsigned int head_len = FUNC3(skb);
	unsigned int len_left = skb->len - head_len;
	unsigned int hdr_len = FUNC4(skb);
	unsigned int csum_offset = hdr_len + skb->csum_offset;
	int eop = (len_left == 0);

	/* Queue the main skb fragment. The fragments are no larger
	 * than max MTU(9000)+ETH_HDR_LEN(14) bytes, which is less
	 * than WQ_ENET_MAX_DESC_LEN length. So only one descriptor
	 * per fragment is queued.
	 */
	FUNC0(wq, skb,
		FUNC2(enic->pdev, skb->data,
			head_len, PCI_DMA_TODEVICE),
		head_len,
		csum_offset,
		hdr_len,
		vlan_tag_insert, vlan_tag,
		eop, loopback);

	if (!eop)
		FUNC1(enic, wq, skb, len_left, loopback);
}