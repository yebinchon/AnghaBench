#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vnet_hdr ;
struct virtio_net_hdr {int flags; unsigned long csum_start; unsigned long csum_offset; unsigned long hdr_len; int /*<<< orphan*/  member_0; } ;
struct sk_buff {int /*<<< orphan*/  protocol; } ;
struct msghdr {scalar_t__ msg_control; } ;
struct macvtap_queue {int flags; int vnet_hdr_sz; int /*<<< orphan*/  vlan; int /*<<< orphan*/  sk; } ;
struct macvlan_dev {int /*<<< orphan*/  dev; } ;
struct iovec {int dummy; } ;
typedef  unsigned long ssize_t ;
struct TYPE_8__ {int /*<<< orphan*/  h_proto; } ;
struct TYPE_7__ {int /*<<< orphan*/  tx_dropped; } ;
struct TYPE_6__ {scalar_t__ destructor_arg; } ;
struct TYPE_5__ {int dev_zerocopy; int shared_frag; } ;

/* Variables and functions */
 int EINVAL ; 
 int EMSGSIZE ; 
 unsigned long ETH_HLEN ; 
 int GOODCOPY_LEN ; 
 int IFF_VNET_HDR ; 
 size_t MAX_SKB_FRAGS ; 
 int /*<<< orphan*/  NET_IP_ALIGN ; 
 int /*<<< orphan*/  SOCK_ZEROCOPY ; 
 size_t UIO_MAXIOV ; 
 int VIRTIO_NET_HDR_F_NEEDS_CSUM ; 
 TYPE_4__* FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct iovec const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,int*) ; 
 int FUNC5 (struct sk_buff*,struct virtio_net_hdr*) ; 
 int FUNC6 (void*,struct iovec const*,int /*<<< orphan*/ ,int) ; 
 TYPE_3__* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct macvlan_dev* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int FUNC11 (struct sk_buff*,int /*<<< orphan*/ ,struct iovec const*,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,unsigned long) ; 
 TYPE_2__* FUNC14 (struct sk_buff*) ; 
 TYPE_1__* FUNC15 (struct sk_buff*) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int) ; 
 int FUNC18 (struct sk_buff*,struct iovec const*,int,size_t) ; 

__attribute__((used)) static ssize_t FUNC19(struct macvtap_queue *q, struct msghdr *m,
				const struct iovec *iv, unsigned long total_len,
				size_t count, int noblock)
{
	struct sk_buff *skb;
	struct macvlan_dev *vlan;
	unsigned long len = total_len;
	int err;
	struct virtio_net_hdr vnet_hdr = { 0 };
	int vnet_hdr_len = 0;
	int copylen = 0;
	bool zerocopy = false;

	if (q->flags & IFF_VNET_HDR) {
		vnet_hdr_len = q->vnet_hdr_sz;

		err = -EINVAL;
		if ((len -= vnet_hdr_len) < 0)
			goto err;

		err = FUNC6((void *)&vnet_hdr, iv, 0,
					   sizeof(vnet_hdr));
		if (err < 0)
			goto err;
		if ((vnet_hdr.flags & VIRTIO_NET_HDR_F_NEEDS_CSUM) &&
		     vnet_hdr.csum_start + vnet_hdr.csum_offset + 2 >
							vnet_hdr.hdr_len)
			vnet_hdr.hdr_len = vnet_hdr.csum_start +
						vnet_hdr.csum_offset + 2;
		err = -EINVAL;
		if (vnet_hdr.hdr_len > len)
			goto err;
	}

	err = -EINVAL;
	if (FUNC17(len < ETH_HLEN))
		goto err;

	err = -EMSGSIZE;
	if (FUNC17(count > UIO_MAXIOV))
		goto err;

	if (m && m->msg_control && FUNC16(&q->sk, SOCK_ZEROCOPY))
		zerocopy = true;

	if (zerocopy) {
		/* Userspace may produce vectors with count greater than
		 * MAX_SKB_FRAGS, so we need to linearize parts of the skb
		 * to let the rest of data to be fit in the frags.
		 */
		if (count > MAX_SKB_FRAGS) {
			copylen = FUNC1(iv, count - MAX_SKB_FRAGS);
			if (copylen < vnet_hdr_len)
				copylen = 0;
			else
				copylen -= vnet_hdr_len;
		}
		/* There are 256 bytes to be copied in skb, so there is enough
		 * room for skb expand head in case it is used.
		 * The rest buffer is mapped from userspace.
		 */
		if (copylen < vnet_hdr.hdr_len)
			copylen = vnet_hdr.hdr_len;
		if (!copylen)
			copylen = GOODCOPY_LEN;
	} else
		copylen = len;

	skb = FUNC4(&q->sk, NET_IP_ALIGN, copylen,
				vnet_hdr.hdr_len, noblock, &err);
	if (!skb)
		goto err;

	if (zerocopy)
		err = FUNC18(skb, iv, vnet_hdr_len, count);
	else
		err = FUNC11(skb, 0, iv, vnet_hdr_len,
						   len);
	if (err)
		goto err_kfree;

	FUNC13(skb, ETH_HLEN);
	FUNC12(skb);
	skb->protocol = FUNC0(skb)->h_proto;

	if (vnet_hdr_len) {
		err = FUNC5(skb, &vnet_hdr);
		if (err)
			goto err_kfree;
	}

	FUNC9();
	vlan = FUNC8(q->vlan);
	/* copy skb_ubuf_info for callback when skb has no error */
	if (zerocopy) {
		FUNC14(skb)->destructor_arg = m->msg_control;
		FUNC15(skb)->dev_zerocopy = 1;
		FUNC15(skb)->shared_frag = 1;
	}
	if (vlan)
		FUNC3(skb, vlan->dev);
	else
		FUNC2(skb);
	FUNC10();

	return total_len;

err_kfree:
	FUNC2(skb);

err:
	FUNC9();
	vlan = FUNC8(q->vlan);
	if (vlan)
		FUNC7(vlan->dev, 0)->tx_dropped++;
	FUNC10();

	return err;
}