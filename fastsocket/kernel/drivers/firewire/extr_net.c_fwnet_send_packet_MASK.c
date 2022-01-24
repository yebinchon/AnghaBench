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
typedef  int /*<<< orphan*/  u8 ;
struct rfc2734_header {int /*<<< orphan*/  w1; int /*<<< orphan*/  w0; } ;
struct TYPE_7__ {int w0; int w1; } ;
struct fwnet_packet_task {unsigned int max_payload; scalar_t__ dest_node; int generation; unsigned long long fifo_addr; int /*<<< orphan*/  pt_link; TYPE_2__* skb; int /*<<< orphan*/  speed; int /*<<< orphan*/  transaction; TYPE_3__ hdr; struct fwnet_device* dev; } ;
struct fwnet_device {TYPE_1__* netdev; int /*<<< orphan*/  lock; int /*<<< orphan*/  sent_list; TYPE_4__* card; int /*<<< orphan*/  broadcasted_list; } ;
struct TYPE_8__ {int generation; int node_id; } ;
struct TYPE_6__ {int /*<<< orphan*/  data; } ;
struct TYPE_5__ {int /*<<< orphan*/  trans_start; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int IANA_SPECIFIER_ID ; 
 scalar_t__ IEEE1394_ALL_NODES ; 
 int /*<<< orphan*/  IEEE1394_BROADCAST_CHANNEL ; 
 int RFC2374_FRAG_HDR_SIZE ; 
#define  RFC2374_HDR_FIRSTFRAG 131 
#define  RFC2374_HDR_INTFRAG 130 
#define  RFC2374_HDR_LASTFRAG 129 
#define  RFC2374_HDR_UNFRAG 128 
 int RFC2374_UNFRAG_HDR_SIZE ; 
 int RFC2734_SW_VERSION ; 
 int /*<<< orphan*/  SCODE_100 ; 
 int /*<<< orphan*/  TCODE_STREAM_DATA ; 
 int /*<<< orphan*/  TCODE_WRITE_BLOCK_REQUEST ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ,unsigned long long,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,struct fwnet_packet_task*) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  fwnet_write_complete ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC10(struct fwnet_packet_task *ptask)
{
	struct fwnet_device *dev;
	unsigned tx_len;
	struct rfc2734_header *bufhdr;
	unsigned long flags;

	dev = ptask->dev;
	tx_len = ptask->max_payload;
	switch (FUNC3(&ptask->hdr)) {
	case RFC2374_HDR_UNFRAG:
		bufhdr = (struct rfc2734_header *)
				FUNC6(ptask->skb, RFC2374_UNFRAG_HDR_SIZE);
		FUNC5(ptask->hdr.w0, &bufhdr->w0);
		break;

	case RFC2374_HDR_FIRSTFRAG:
	case RFC2374_HDR_INTFRAG:
	case RFC2374_HDR_LASTFRAG:
		bufhdr = (struct rfc2734_header *)
				FUNC6(ptask->skb, RFC2374_FRAG_HDR_SIZE);
		FUNC5(ptask->hdr.w0, &bufhdr->w0);
		FUNC5(ptask->hdr.w1, &bufhdr->w1);
		break;

	default:
		FUNC0();
	}
	if (ptask->dest_node == IEEE1394_ALL_NODES) {
		u8 *p;
		int generation;
		int node_id;

		/* ptask->generation may not have been set yet */
		generation = dev->card->generation;
		FUNC7();
		node_id = dev->card->node_id;

		p = FUNC6(ptask->skb, 8);
		FUNC5(node_id << 16 | IANA_SPECIFIER_ID >> 8, p);
		FUNC5((IANA_SPECIFIER_ID & 0xff) << 24
						| RFC2734_SW_VERSION, &p[4]);

		/* We should not transmit if broadcast_channel.valid == 0. */
		FUNC1(dev->card, &ptask->transaction,
				TCODE_STREAM_DATA,
				FUNC2(3,
						IEEE1394_BROADCAST_CHANNEL, 0),
				generation, SCODE_100, 0ULL, ptask->skb->data,
				tx_len + 8, fwnet_write_complete, ptask);

		/* FIXME race? */
		FUNC8(&dev->lock, flags);
		FUNC4(&ptask->pt_link, &dev->broadcasted_list);
		FUNC9(&dev->lock, flags);

		return 0;
	}

	FUNC1(dev->card, &ptask->transaction,
			TCODE_WRITE_BLOCK_REQUEST, ptask->dest_node,
			ptask->generation, ptask->speed, ptask->fifo_addr,
			ptask->skb->data, tx_len, fwnet_write_complete, ptask);

	/* FIXME race? */
	FUNC8(&dev->lock, flags);
	FUNC4(&ptask->pt_link, &dev->sent_list);
	FUNC9(&dev->lock, flags);

	dev->netdev->trans_start = jiffies;

	return 0;
}