#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct virtio_net_hdr {int flags; size_t csum_start; size_t csum_offset; size_t hdr_len; int gso_type; scalar_t__ gso_size; int /*<<< orphan*/  member_0; } ;
struct tun_struct {int flags; size_t vnet_hdr_sz; TYPE_3__* dev; } ;
struct tun_pi {void* proto; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct sk_buff {int* data; void* protocol; TYPE_3__* dev; int /*<<< orphan*/  ip_summed; } ;
struct iovec {int dummy; } ;
typedef  size_t ssize_t ;
typedef  int /*<<< orphan*/  pi ;
typedef  int /*<<< orphan*/  gso ;
struct TYPE_4__ {size_t rx_bytes; int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rx_frame_errors; int /*<<< orphan*/  rx_dropped; } ;
struct TYPE_6__ {TYPE_1__ stats; } ;
struct TYPE_5__ {scalar_t__ gso_size; scalar_t__ gso_segs; int /*<<< orphan*/  gso_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_UNNECESSARY ; 
 size_t EAGAIN ; 
 size_t EFAULT ; 
 size_t EINVAL ; 
 size_t ETH_HLEN ; 
 int /*<<< orphan*/  ETH_P_IP ; 
 int /*<<< orphan*/  ETH_P_IPV6 ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 size_t NET_IP_ALIGN ; 
 size_t FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  SKB_GSO_DODGY ; 
 int /*<<< orphan*/  SKB_GSO_TCPV4 ; 
 int /*<<< orphan*/  SKB_GSO_TCPV6 ; 
 int /*<<< orphan*/  SKB_GSO_TCP_ECN ; 
 int /*<<< orphan*/  SKB_GSO_UDP ; 
 int TUN_NOCHECKSUM ; 
 int TUN_NO_PI ; 
#define  TUN_TAP_DEV 132 
#define  TUN_TUN_DEV 131 
 int TUN_TYPE_MASK ; 
 int TUN_VNET_HDR ; 
 int VIRTIO_NET_HDR_F_NEEDS_CSUM ; 
 int VIRTIO_NET_HDR_GSO_ECN ; 
 int VIRTIO_NET_HDR_GSO_NONE ; 
#define  VIRTIO_NET_HDR_GSO_TCPV4 130 
#define  VIRTIO_NET_HDR_GSO_TCPV6 129 
#define  VIRTIO_NET_HDR_GSO_UDP 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (struct sk_buff*,TYPE_3__*) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 scalar_t__ FUNC6 (void*,struct iovec const*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 scalar_t__ FUNC9 (struct sk_buff*,int /*<<< orphan*/ ,struct iovec const*,int,size_t) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 
 TYPE_2__* FUNC12 (struct sk_buff*) ; 
 struct sk_buff* FUNC13 (struct tun_struct*,size_t,size_t,size_t,int) ; 
 scalar_t__ FUNC14 (int) ; 

__attribute__((used)) static __inline__ ssize_t FUNC15(struct tun_struct *tun,
				       const struct iovec *iv, size_t count,
				       int noblock)
{
	struct tun_pi pi = { 0, FUNC2(ETH_P_IP) };
	struct sk_buff *skb;
	size_t len = count, align = 0;
	struct virtio_net_hdr gso = { 0 };
	int offset = 0;

	if (!(tun->flags & TUN_NO_PI)) {
		if ((len -= sizeof(pi)) > count)
			return -EINVAL;

		if (FUNC6((void *)&pi, iv, 0, sizeof(pi)))
			return -EFAULT;
		offset += sizeof(pi);
	}

	if (tun->flags & TUN_VNET_HDR) {
		if ((len -= tun->vnet_hdr_sz) > count)
			return -EINVAL;

		if (FUNC6((void *)&gso, iv, offset, sizeof(gso)))
			return -EFAULT;

		if ((gso.flags & VIRTIO_NET_HDR_F_NEEDS_CSUM) &&
		    gso.csum_start + gso.csum_offset + 2 > gso.hdr_len)
			gso.hdr_len = gso.csum_start + gso.csum_offset + 2;

		if (gso.hdr_len > len)
			return -EINVAL;
		offset += tun->vnet_hdr_sz;
	}

	if ((tun->flags & TUN_TYPE_MASK) == TUN_TAP_DEV) {
		align = NET_IP_ALIGN;
		if (FUNC14(len < ETH_HLEN ||
			     (gso.hdr_len && gso.hdr_len < ETH_HLEN)))
			return -EINVAL;
	}

	skb = FUNC13(tun, align, len, gso.hdr_len, noblock);
	if (FUNC0(skb)) {
		if (FUNC1(skb) != -EAGAIN)
			tun->dev->stats.rx_dropped++;
		return FUNC1(skb);
	}

	if (FUNC9(skb, 0, iv, offset, len)) {
		tun->dev->stats.rx_dropped++;
		FUNC5(skb);
		return -EFAULT;
	}

	if (gso.flags & VIRTIO_NET_HDR_F_NEEDS_CSUM) {
		if (!FUNC10(skb, gso.csum_start,
					  gso.csum_offset)) {
			tun->dev->stats.rx_frame_errors++;
			FUNC5(skb);
			return -EINVAL;
		}
	} else if (tun->flags & TUN_NOCHECKSUM)
		skb->ip_summed = CHECKSUM_UNNECESSARY;

	switch (tun->flags & TUN_TYPE_MASK) {
	case TUN_TUN_DEV:
		if (tun->flags & TUN_NO_PI) {
			switch (skb->data[0] & 0xf0) {
			case 0x40:
				pi.proto = FUNC4(ETH_P_IP);
				break;
			case 0x60:
				pi.proto = FUNC4(ETH_P_IPV6);
				break;
			default:
				tun->dev->stats.rx_dropped++;
				FUNC5(skb);
				return -EINVAL;
			}
		}

		FUNC11(skb);
		skb->protocol = pi.proto;
		skb->dev = tun->dev;
		break;
	case TUN_TAP_DEV:
		skb->protocol = FUNC3(skb, tun->dev);
		break;
	};

	if (gso.gso_type != VIRTIO_NET_HDR_GSO_NONE) {
		FUNC8("GSO!\n");
		switch (gso.gso_type & ~VIRTIO_NET_HDR_GSO_ECN) {
		case VIRTIO_NET_HDR_GSO_TCPV4:
			FUNC12(skb)->gso_type = SKB_GSO_TCPV4;
			break;
		case VIRTIO_NET_HDR_GSO_TCPV6:
			FUNC12(skb)->gso_type = SKB_GSO_TCPV6;
			break;
		case VIRTIO_NET_HDR_GSO_UDP:
			FUNC12(skb)->gso_type = SKB_GSO_UDP;
			break;
		default:
			tun->dev->stats.rx_frame_errors++;
			FUNC5(skb);
			return -EINVAL;
		}

		if (gso.gso_type & VIRTIO_NET_HDR_GSO_ECN)
			FUNC12(skb)->gso_type |= SKB_GSO_TCP_ECN;

		FUNC12(skb)->gso_size = gso.gso_size;
		if (FUNC12(skb)->gso_size == 0) {
			tun->dev->stats.rx_frame_errors++;
			FUNC5(skb);
			return -EINVAL;
		}

		/* Header must be checked, and gso_segs computed. */
		FUNC12(skb)->gso_type |= SKB_GSO_DODGY;
		FUNC12(skb)->gso_segs = 0;
	}

	FUNC7(skb);

	tun->dev->stats.rx_packets++;
	tun->dev->stats.rx_bytes += len;

	return count;
}