#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  scalar_t__ u16 ;
struct usb_cdc_ncm_nth16 {void* wBlockLength; void* wSequence; void* wHeaderLength; int /*<<< orphan*/  dwSignature; } ;
struct usb_cdc_ncm_ndp16 {void* wLength; TYPE_1__* dpe16; } ;
struct usb_cdc_ncm_dpe16 {int dummy; } ;
struct sk_buff {int len; scalar_t__ data; } ;
struct TYPE_12__ {int /*<<< orphan*/  dwNtbOutMaxSize; } ;
struct cdc_ncm_ctx {int tx_max; scalar_t__ tx_curr_frame_num; scalar_t__ tx_max_datagrams; struct sk_buff* tx_curr_skb; TYPE_3__* netdev; TYPE_6__ ncm_parm; TYPE_5__* out_ep; int /*<<< orphan*/  tx_timer_pending; struct sk_buff* tx_rem_sign; struct sk_buff* tx_rem_skb; scalar_t__ tx_remainder; scalar_t__ tx_modulus; int /*<<< orphan*/  tx_seq; } ;
typedef  struct sk_buff* __le32 ;
struct TYPE_10__ {void* wMaxPacketSize; } ;
struct TYPE_11__ {TYPE_4__ desc; } ;
struct TYPE_8__ {int /*<<< orphan*/  tx_packets; int /*<<< orphan*/  tx_dropped; } ;
struct TYPE_9__ {TYPE_2__ stats; } ;
struct TYPE_7__ {void* wDatagramIndex; void* wDatagramLength; } ;

/* Variables and functions */
 scalar_t__ CDC_NCM_DPT_DATAGRAMS_MAX ; 
 int CDC_NCM_MIN_TX_PKT ; 
 scalar_t__ CDC_NCM_RESTART_TIMER_DATAGRAM_CNT ; 
 int /*<<< orphan*/  CDC_NCM_TIMER_PENDING_CNT ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  USB_CDC_NCM_NTH16_SIGN ; 
 struct sk_buff* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,scalar_t__,scalar_t__,int) ; 
 struct usb_cdc_ncm_ndp16* FUNC2 (struct cdc_ncm_ctx*,struct sk_buff*,struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct cdc_ncm_ctx*) ; 
 void* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 scalar_t__ FUNC7 (void*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__*,scalar_t__,int) ; 
 scalar_t__ FUNC10 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__* FUNC11 (struct sk_buff*,int) ; 
 scalar_t__ FUNC12 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,struct sk_buff*) ; 

struct sk_buff *
FUNC14(struct cdc_ncm_ctx *ctx, struct sk_buff *skb, __le32 sign)
{
	struct usb_cdc_ncm_nth16 *nth16;
	struct usb_cdc_ncm_ndp16 *ndp16;
	struct sk_buff *skb_out;
	u16 n = 0, index, ndplen;
	u8 ready2send = 0;

	/* if there is a remaining skb, it gets priority */
	if (skb != NULL) {
		FUNC13(skb, ctx->tx_rem_skb);
		FUNC13(sign, ctx->tx_rem_sign);
	} else {
		ready2send = 1;
	}

	/* check if we are resuming an OUT skb */
	skb_out = ctx->tx_curr_skb;

	/* allocate a new OUT skb */
	if (!skb_out) {
		skb_out = FUNC0((ctx->tx_max + 1), GFP_ATOMIC);
		if (skb_out == NULL) {
			if (skb != NULL) {
				FUNC6(skb);
				ctx->netdev->stats.tx_dropped++;
			}
			goto exit_no_skb;
		}
		/* fill out the initial 16-bit NTB header */
		nth16 = (struct usb_cdc_ncm_nth16 *)FUNC10(FUNC11(skb_out, sizeof(struct usb_cdc_ncm_nth16)), 0, sizeof(struct usb_cdc_ncm_nth16));
		nth16->dwSignature = FUNC5(USB_CDC_NCM_NTH16_SIGN);
		nth16->wHeaderLength = FUNC4(sizeof(struct usb_cdc_ncm_nth16));
		nth16->wSequence = FUNC4(ctx->tx_seq++);

		/* count total number of frames in this NTB */
		ctx->tx_curr_frame_num = 0;
	}

	for (n = ctx->tx_curr_frame_num; n < ctx->tx_max_datagrams; n++) {
		/* send any remaining skb first */
		if (skb == NULL) {
			skb = ctx->tx_rem_skb;
			sign = ctx->tx_rem_sign;
			ctx->tx_rem_skb = NULL;

			/* check for end of skb */
			if (skb == NULL)
				break;
		}

		/* get the appropriate NDP for this skb */
		ndp16 = FUNC2(ctx, skb_out, sign, skb->len + ctx->tx_modulus + ctx->tx_remainder);

		/* align beginning of next frame */
		FUNC1(skb_out,  ctx->tx_modulus, ctx->tx_remainder, ctx->tx_max);

		/* check if we had enough room left for both NDP and frame */
		if (!ndp16 || skb_out->len + skb->len > ctx->tx_max) {
			if (n == 0) {
				/* won't fit, MTU problem? */
				FUNC6(skb);
				skb = NULL;
				ctx->netdev->stats.tx_dropped++;
			} else {
				/* no room for skb - store for later */
				if (ctx->tx_rem_skb != NULL) {
					FUNC6(ctx->tx_rem_skb);
					ctx->netdev->stats.tx_dropped++;
				}
				ctx->tx_rem_skb = skb;
				ctx->tx_rem_sign = sign;
				skb = NULL;
				ready2send = 1;
			}
			break;
		}

		/* calculate frame number withing this NDP */
		ndplen = FUNC7(ndp16->wLength);
		index = (ndplen - sizeof(struct usb_cdc_ncm_ndp16)) / sizeof(struct usb_cdc_ncm_dpe16) - 1;

		/* OK, add this skb */
		ndp16->dpe16[index].wDatagramLength = FUNC4(skb->len);
		ndp16->dpe16[index].wDatagramIndex = FUNC4(skb_out->len);
		ndp16->wLength = FUNC4(ndplen + sizeof(struct usb_cdc_ncm_dpe16));
		FUNC9(FUNC11(skb_out, skb->len), skb->data, skb->len);
		FUNC6(skb);
		skb = NULL;

		/* send now if this NDP is full */
		if (index >= CDC_NCM_DPT_DATAGRAMS_MAX) {
			ready2send = 1;
			break;
		}
	}

	/* free up any dangling skb */
	if (skb != NULL) {
		FUNC6(skb);
		skb = NULL;
		ctx->netdev->stats.tx_dropped++;
	}

	ctx->tx_curr_frame_num = n;

	if (n == 0) {
		/* wait for more frames */
		/* push variables */
		ctx->tx_curr_skb = skb_out;
		goto exit_no_skb;

	} else if ((n < ctx->tx_max_datagrams) && (ready2send == 0)) {
		/* wait for more frames */
		/* push variables */
		ctx->tx_curr_skb = skb_out;
		/* set the pending count */
		if (n < CDC_NCM_RESTART_TIMER_DATAGRAM_CNT)
			ctx->tx_timer_pending = CDC_NCM_TIMER_PENDING_CNT;
		goto exit_no_skb;

	} else {
		/* frame goes out */
		/* variables will be reset at next call */
	}

	/*
	 * If collected data size is less or equal CDC_NCM_MIN_TX_PKT bytes,
	 * we send buffers as it is. If we get more data, it would be more
	 * efficient for USB HS mobile device with DMA engine to receive a full
	 * size NTB, than canceling DMA transfer and receiving a short packet.
	 */
	if (skb_out->len > CDC_NCM_MIN_TX_PKT)
		/* final zero padding */
		FUNC10(FUNC11(skb_out, ctx->tx_max - skb_out->len), 0, ctx->tx_max - skb_out->len);

	/* do we need to prevent a ZLP? */
	if (((skb_out->len % FUNC7(ctx->out_ep->desc.wMaxPacketSize)) == 0) &&
	    (skb_out->len < FUNC8(ctx->ncm_parm.dwNtbOutMaxSize)) && FUNC12(skb_out))
		*FUNC11(skb_out, 1) = 0;	/* force short packet */

	/* set final frame length */
	nth16 = (struct usb_cdc_ncm_nth16 *)skb_out->data;
	nth16->wBlockLength = FUNC4(skb_out->len);

	/* return skb */
	ctx->tx_curr_skb = NULL;
	ctx->netdev->stats.tx_packets += ctx->tx_curr_frame_num;
	return skb_out;

exit_no_skb:
	/* Start timer, if there is a remaining skb */
	if (ctx->tx_curr_skb != NULL)
		FUNC3(ctx);
	return NULL;
}