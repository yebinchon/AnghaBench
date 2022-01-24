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
typedef  size_t u8 ;
typedef  int u16 ;
struct sk_buff {int dummy; } ;
struct lbs_private {int surpriseremoved; scalar_t__ resp_idx; struct if_cs_card* card; int /*<<< orphan*/  driver_lock; int /*<<< orphan*/ * resp_len; int /*<<< orphan*/ * resp_buf; } ;
struct if_cs_card {struct lbs_private* priv; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int IF_CS_BIT_EVENT ; 
 int IF_CS_BIT_MASK ; 
 int IF_CS_BIT_RESP ; 
 int IF_CS_BIT_RX ; 
 int IF_CS_BIT_TX ; 
 int /*<<< orphan*/  IF_CS_CARD_INT_CAUSE ; 
 int /*<<< orphan*/  IF_CS_CARD_STATUS ; 
 int IF_CS_CARD_STATUS_MASK ; 
 int /*<<< orphan*/  IF_CS_HOST_INT_CAUSE ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  LBS_DEB_CS ; 
 int FUNC1 (struct if_cs_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct lbs_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC3 (struct lbs_private*) ; 
 int /*<<< orphan*/  FUNC4 (struct if_cs_card*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct lbs_private*) ; 
 int /*<<< orphan*/  FUNC9 (struct lbs_private*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (struct lbs_private*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (struct lbs_private*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static irqreturn_t FUNC14(int irq, void *data)
{
	struct if_cs_card *card = data;
	struct lbs_private *priv = card->priv;
	u16 cause;

	FUNC6(LBS_DEB_CS);

	/* Ask card interrupt cause register if there is something for us */
	cause = FUNC1(card, IF_CS_CARD_INT_CAUSE);
	FUNC5("cause 0x%04x\n", cause);

	if (cause == 0) {
		/* Not for us */
		return IRQ_NONE;
	}

	if (cause == 0xffff) {
		/* Read in junk, the card has probably been removed */
		card->priv->surpriseremoved = 1;
		return IRQ_HANDLED;
	}

	if (cause & IF_CS_BIT_RX) {
		struct sk_buff *skb;
		FUNC5("rx packet\n");
		skb = FUNC3(priv);
		if (skb)
			FUNC10(priv, skb);
	}

	if (cause & IF_CS_BIT_TX) {
		FUNC5("tx done\n");
		FUNC8(priv);
	}

	if (cause & IF_CS_BIT_RESP) {
		unsigned long flags;
		u8 i;

		FUNC5("cmd resp\n");
		FUNC12(&priv->driver_lock, flags);
		i = (priv->resp_idx == 0) ? 1 : 0;
		FUNC13(&priv->driver_lock, flags);

		FUNC0(priv->resp_len[i]);
		FUNC2(priv, priv->resp_buf[i],
			&priv->resp_len[i]);

		FUNC12(&priv->driver_lock, flags);
		FUNC9(priv, i);
		FUNC13(&priv->driver_lock, flags);
	}

	if (cause & IF_CS_BIT_EVENT) {
		u16 status = FUNC1(priv->card, IF_CS_CARD_STATUS);
		FUNC4(priv->card, IF_CS_HOST_INT_CAUSE,
			IF_CS_BIT_EVENT);
		FUNC11(priv, (status & IF_CS_CARD_STATUS_MASK) >> 8);
	}

	/* Clear interrupt cause */
	FUNC4(card, IF_CS_CARD_INT_CAUSE, cause & IF_CS_BIT_MASK);

	FUNC7(LBS_DEB_CS);
	return IRQ_HANDLED;
}