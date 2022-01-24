#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {unsigned long len; int /*<<< orphan*/  users; struct ll_header* data; int /*<<< orphan*/  protocol; } ;
struct net_device {struct ctcm_priv* ml_priv; } ;
struct ll_header {int length; scalar_t__ unused; int /*<<< orphan*/  type; } ;
struct TYPE_5__ {int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  tx_packets; } ;
struct ctcm_priv {TYPE_1__ stats; } ;
struct TYPE_6__ {unsigned long txlen; int /*<<< orphan*/  doios_single; int /*<<< orphan*/  send_stamp; } ;
struct channel {int collect_len; int max_bufsize; struct net_device* netdev; int /*<<< orphan*/  io_queue; int /*<<< orphan*/  timer; TYPE_2__ prof; int /*<<< orphan*/  cdev; TYPE_3__* ccw; int /*<<< orphan*/  fsm; scalar_t__ retry; struct sk_buff* trans_skb; int /*<<< orphan*/  collect_lock; int /*<<< orphan*/  collect_queue; } ;
typedef  int __u16 ;
struct TYPE_7__ {int count; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTCM_TIME_5_SEC ; 
 int /*<<< orphan*/  CTC_EVENT_TIMER ; 
 int /*<<< orphan*/  CTC_STATE_TX ; 
 scalar_t__ CTC_STATE_TXIDLE ; 
 int EBUSY ; 
 int ENOMEM ; 
 int GFP_ATOMIC ; 
 int GFP_DMA ; 
 unsigned long LL_HEADER_LENGTH ; 
 struct sk_buff* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,TYPE_3__*,unsigned long,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct channel*,int,char*) ; 
 scalar_t__ FUNC5 (struct channel*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct channel*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,struct ll_header*,unsigned long) ; 
 scalar_t__ FUNC15 (TYPE_3__*,struct ll_header*) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*,unsigned long) ; 
 scalar_t__ FUNC19 (struct sk_buff*,int) ; 
 scalar_t__ FUNC20 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC22 (struct sk_buff*) ; 
 scalar_t__ FUNC23 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC26(struct channel *ch, struct sk_buff *skb)
{
	unsigned long saveflags;
	struct ll_header header;
	int rc = 0;
	__u16 block_len;
	int ccw_idx;
	struct sk_buff *nskb;
	unsigned long hi;

	/* we need to acquire the lock for testing the state
	 * otherwise we can have an IRQ changing the state to
	 * TXIDLE after the test but before acquiring the lock.
	 */
	FUNC24(&ch->collect_lock, saveflags);
	if (FUNC11(ch->fsm) != CTC_STATE_TXIDLE) {
		int l = skb->len + LL_HEADER_LENGTH;

		if (ch->collect_len + l > ch->max_bufsize - 2) {
			FUNC25(&ch->collect_lock, saveflags);
			return -EBUSY;
		} else {
			FUNC2(&skb->users);
			header.length = l;
			header.type = skb->protocol;
			header.unused = 0;
			FUNC14(FUNC19(skb, LL_HEADER_LENGTH), &header,
			       LL_HEADER_LENGTH);
			FUNC21(&ch->collect_queue, skb);
			ch->collect_len += l;
		}
		FUNC25(&ch->collect_lock, saveflags);
				goto done;
	}
	FUNC25(&ch->collect_lock, saveflags);
	/*
	 * Protect skb against beeing free'd by upper
	 * layers.
	 */
	FUNC2(&skb->users);
	ch->prof.txlen += skb->len;
	header.length = skb->len + LL_HEADER_LENGTH;
	header.type = skb->protocol;
	header.unused = 0;
	FUNC14(FUNC19(skb, LL_HEADER_LENGTH), &header, LL_HEADER_LENGTH);
	block_len = skb->len + 2;
	*((__u16 *)FUNC19(skb, 2)) = block_len;

	/*
	 * IDAL support in CTCM is broken, so we have to
	 * care about skb's above 2G ourselves.
	 */
	hi = ((unsigned long)FUNC23(skb) + LL_HEADER_LENGTH) >> 31;
	if (hi) {
		nskb = FUNC0(skb->len, GFP_ATOMIC | GFP_DMA);
		if (!nskb) {
			FUNC1(&skb->users);
			FUNC18(skb, LL_HEADER_LENGTH + 2);
			FUNC6(ch->netdev);
			return -ENOMEM;
		} else {
			FUNC14(FUNC20(nskb, skb->len), skb->data, skb->len);
			FUNC2(&nskb->users);
			FUNC1(&skb->users);
			FUNC8(skb);
			skb = nskb;
		}
	}

	ch->ccw[4].count = block_len;
	if (FUNC15(&ch->ccw[4], skb->data)) {
		/*
		 * idal allocation failed, try via copying to
		 * trans_skb. trans_skb usually has a pre-allocated
		 * idal.
		 */
		if (FUNC5(ch)) {
			/*
			 * Remove our header. It gets added
			 * again on retransmit.
			 */
			FUNC1(&skb->users);
			FUNC18(skb, LL_HEADER_LENGTH + 2);
			FUNC6(ch->netdev);
			return -ENOMEM;
		}

		FUNC22(ch->trans_skb);
		ch->trans_skb->len = 0;
		ch->ccw[1].count = skb->len;
		FUNC16(skb,
				FUNC20(ch->trans_skb, skb->len), skb->len);
		FUNC1(&skb->users);
		FUNC8(skb);
		ccw_idx = 0;
	} else {
		FUNC21(&ch->io_queue, skb);
		ccw_idx = 3;
	}
	ch->retry = 0;
	FUNC12(ch->fsm, CTC_STATE_TX);
	FUNC9(&ch->timer, CTCM_TIME_5_SEC, CTC_EVENT_TIMER, ch);
	FUNC24(FUNC13(ch->cdev), saveflags);
	ch->prof.send_stamp = FUNC7(); /* xtime */
	rc = FUNC3(ch->cdev, &ch->ccw[ccw_idx],
					(unsigned long)ch, 0xff, 0);
	FUNC25(FUNC13(ch->cdev), saveflags);
	if (ccw_idx == 3)
		ch->prof.doios_single++;
	if (rc != 0) {
		FUNC10(&ch->timer);
		FUNC4(ch, rc, "single skb TX");
		if (ccw_idx == 3)
			FUNC17(&ch->io_queue);
		/*
		 * Remove our header. It gets added
		 * again on retransmit.
		 */
		FUNC18(skb, LL_HEADER_LENGTH + 2);
	} else if (ccw_idx == 0) {
		struct net_device *dev = ch->netdev;
		struct ctcm_priv *priv = dev->ml_priv;
		priv->stats.tx_packets++;
		priv->stats.tx_bytes += skb->len - LL_HEADER_LENGTH;
	}
done:
	FUNC6(ch->netdev);
	return rc;
}