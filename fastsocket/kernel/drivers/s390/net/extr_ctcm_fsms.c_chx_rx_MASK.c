#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int /*<<< orphan*/  len; scalar_t__ data; } ;
struct net_device {int /*<<< orphan*/  name; struct ctcm_priv* ml_priv; } ;
struct TYPE_9__ {int /*<<< orphan*/  rx_length_errors; int /*<<< orphan*/  rx_dropped; } ;
struct ctcm_priv {TYPE_4__ stats; } ;
struct channel {int max_bufsize; int protocol; TYPE_5__* ccw; int /*<<< orphan*/  cdev; scalar_t__ trans_skb_data; int /*<<< orphan*/  timer; struct sk_buff* trans_skb; TYPE_3__* irb; struct net_device* netdev; } ;
typedef  int /*<<< orphan*/  fsm_instance ;
typedef  int __u16 ;
struct TYPE_10__ {int count; } ;
struct TYPE_6__ {int count; } ;
struct TYPE_7__ {TYPE_1__ cmd; } ;
struct TYPE_8__ {TYPE_2__ scsw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,...) ; 
 int /*<<< orphan*/  CTCM_FUNTAIL ; 
#define  CTCM_PROTO_OS390 129 
#define  CTCM_PROTO_S390 128 
 int /*<<< orphan*/  CTC_DBF_NOTICE ; 
 int /*<<< orphan*/  TRACE ; 
 int FUNC1 (int /*<<< orphan*/ ,TYPE_5__*,unsigned long,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct channel*,int,char*) ; 
 scalar_t__ FUNC3 (struct channel*) ; 
 int /*<<< orphan*/  FUNC4 (struct channel*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ do_debug ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC8(fsm_instance *fi, int event, void *arg)
{
	struct channel *ch = arg;
	struct net_device *dev = ch->netdev;
	struct ctcm_priv *priv = dev->ml_priv;
	int len = ch->max_bufsize - ch->irb->scsw.cmd.count;
	struct sk_buff *skb = ch->trans_skb;
	__u16 block_len = *((__u16 *)skb->data);
	int check_len;
	int rc;

	FUNC6(&ch->timer);
	if (len < 8) {
		FUNC0(TRACE, CTC_DBF_NOTICE,
			"%s(%s): got packet with length %d < 8\n",
					CTCM_FUNTAIL, dev->name, len);
		priv->stats.rx_dropped++;
		priv->stats.rx_length_errors++;
						goto again;
	}
	if (len > ch->max_bufsize) {
		FUNC0(TRACE, CTC_DBF_NOTICE,
			"%s(%s): got packet with length %d > %d\n",
				CTCM_FUNTAIL, dev->name, len, ch->max_bufsize);
		priv->stats.rx_dropped++;
		priv->stats.rx_length_errors++;
						goto again;
	}

	/*
	 * VM TCP seems to have a bug sending 2 trailing bytes of garbage.
	 */
	switch (ch->protocol) {
	case CTCM_PROTO_S390:
	case CTCM_PROTO_OS390:
		check_len = block_len + 2;
		break;
	default:
		check_len = block_len;
		break;
	}
	if ((len < block_len) || (len > check_len)) {
		FUNC0(TRACE, CTC_DBF_NOTICE,
			"%s(%s): got block length %d != rx length %d\n",
				CTCM_FUNTAIL, dev->name, block_len, len);
		if (do_debug)
			FUNC5(skb, 0);

		*((__u16 *)skb->data) = len;
		priv->stats.rx_dropped++;
		priv->stats.rx_length_errors++;
						goto again;
	}
	if (block_len > 2) {
		*((__u16 *)skb->data) = block_len - 2;
		FUNC4(ch, skb);
	}
 again:
	skb->data = ch->trans_skb_data;
	FUNC7(skb);
	skb->len = 0;
	if (FUNC3(ch))
		return;
	ch->ccw[1].count = ch->max_bufsize;
	rc = FUNC1(ch->cdev, &ch->ccw[0],
					(unsigned long)ch, 0xff, 0);
	if (rc != 0)
		FUNC2(ch, rc, "normal RX");
}