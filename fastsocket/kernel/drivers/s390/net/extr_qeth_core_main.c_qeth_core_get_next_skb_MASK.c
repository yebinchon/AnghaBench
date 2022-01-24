#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_9__ ;
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct qeth_qdio_buffer {struct qdio_buffer* buffer; } ;
struct TYPE_12__ {int pdu_length; } ;
struct TYPE_11__ {int length; } ;
struct TYPE_10__ {int id; int pkt_length; } ;
struct TYPE_13__ {TYPE_3__ osn; TYPE_2__ l3; TYPE_1__ l2; } ;
struct qeth_hdr {TYPE_4__ hdr; } ;
struct TYPE_17__ {int /*<<< orphan*/  rx_dropped; int /*<<< orphan*/  rx_errors; } ;
struct TYPE_16__ {int /*<<< orphan*/  sg_frags_rx; int /*<<< orphan*/  sg_skbs_rx; } ;
struct TYPE_15__ {int rx_sg_cb; scalar_t__ cq; scalar_t__ performance_stats; } ;
struct TYPE_14__ {scalar_t__ type; int /*<<< orphan*/  link_type; } ;
struct qeth_card {TYPE_8__ stats; TYPE_7__ perf_stats; TYPE_6__ options; int /*<<< orphan*/  force_alloc_skb; TYPE_5__ info; } ;
struct qdio_buffer_element {int length; struct qeth_hdr* addr; } ;
struct qdio_buffer {int dummy; } ;
struct TYPE_18__ {scalar_t__ nr_frags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qeth_card*) ; 
 int ETH_HLEN ; 
 int /*<<< orphan*/  MISC ; 
 int /*<<< orphan*/  QERR ; 
 scalar_t__ QETH_CARD_TYPE_OSN ; 
 scalar_t__ QETH_CQ_ENABLED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,struct qdio_buffer*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 
#define  QETH_HEADER_TYPE_LAYER2 130 
#define  QETH_HEADER_TYPE_LAYER3 129 
#define  QETH_HEADER_TYPE_OSN 128 
 int /*<<< orphan*/  QETH_LINK_TYPE_HSTR ; 
 int /*<<< orphan*/  QETH_LINK_TYPE_LANE_TR ; 
 int /*<<< orphan*/  TRACE ; 
 int TR_HLEN ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,void*,int) ; 
 int FUNC8 (int,int) ; 
 scalar_t__ FUNC9 () ; 
 scalar_t__ FUNC10 (struct qeth_qdio_buffer*,struct qdio_buffer_element*,struct sk_buff**,int,int*,int) ; 
 scalar_t__ FUNC11 (struct qdio_buffer_element*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,int) ; 
 TYPE_9__* FUNC14 (struct sk_buff*) ; 

struct sk_buff *FUNC15(struct qeth_card *card,
		struct qeth_qdio_buffer *qethbuffer,
		struct qdio_buffer_element **__element, int *__offset,
		struct qeth_hdr **hdr)
{
	struct qdio_buffer_element *element = *__element;
	struct qdio_buffer *buffer = qethbuffer->buffer;
	int offset = *__offset;
	struct sk_buff *skb = NULL;
	int skb_len = 0;
	void *data_ptr;
	int data_len;
	int headroom = 0;
	int use_rx_sg = 0;
	int frag = 0;

	/* qeth_hdr must not cross element boundaries */
	if (element->length < offset + sizeof(struct qeth_hdr)) {
		if (FUNC11(element))
			return NULL;
		element++;
		offset = 0;
		if (element->length < sizeof(struct qeth_hdr))
			return NULL;
	}
	*hdr = element->addr + offset;

	offset += sizeof(struct qeth_hdr);
	switch ((*hdr)->hdr.l2.id) {
	case QETH_HEADER_TYPE_LAYER2:
		skb_len = (*hdr)->hdr.l2.pkt_length;
		break;
	case QETH_HEADER_TYPE_LAYER3:
		skb_len = (*hdr)->hdr.l3.length;
		if ((card->info.link_type == QETH_LINK_TYPE_LANE_TR) ||
		    (card->info.link_type == QETH_LINK_TYPE_HSTR))
			headroom = TR_HLEN;
		else
			headroom = ETH_HLEN;
		break;
	case QETH_HEADER_TYPE_OSN:
		skb_len = (*hdr)->hdr.osn.pdu_length;
		headroom = sizeof(struct qeth_hdr);
		break;
	default:
		break;
	}

	if (!skb_len)
		return NULL;

	if (((skb_len >= card->options.rx_sg_cb) &&
	     (!(card->info.type == QETH_CARD_TYPE_OSN)) &&
	     (!FUNC4(&card->force_alloc_skb))) ||
	    (card->options.cq == QETH_CQ_ENABLED)) {
		use_rx_sg = 1;
	} else {
		skb = FUNC5(skb_len + headroom);
		if (!skb)
			goto no_mem;
		if (headroom)
			FUNC13(skb, headroom);
	}

	data_ptr = element->addr + offset;
	while (skb_len) {
		data_len = FUNC8(skb_len, (int)(element->length - offset));
		if (data_len) {
			if (use_rx_sg) {
				if (FUNC10(qethbuffer, element,
				    &skb, offset, &frag, data_len))
					goto no_mem;
			} else {
				FUNC7(FUNC12(skb, data_len), data_ptr,
					data_len);
			}
		}
		skb_len -= data_len;
		if (skb_len) {
			if (FUNC11(element)) {
				FUNC2(TRACE, 4, "unexeob");
				FUNC3(TRACE, 4, "%s",
					FUNC0(card));
				FUNC2(QERR, 2, "unexeob");
				FUNC3(QERR, 2, "%s",
					FUNC0(card));
				FUNC1(MISC, 4, buffer, sizeof(*buffer));
				FUNC6(skb);
				card->stats.rx_errors++;
				return NULL;
			}
			element++;
			offset = 0;
			data_ptr = element->addr;
		} else {
			offset += data_len;
		}
	}
	*__element = element;
	*__offset = offset;
	if (use_rx_sg && card->options.performance_stats) {
		card->perf_stats.sg_skbs_rx++;
		card->perf_stats.sg_frags_rx += FUNC14(skb)->nr_frags;
	}
	return skb;
no_mem:
	if (FUNC9()) {
		FUNC2(TRACE, 2, "noskbmem");
		FUNC3(TRACE, 2, "%s", FUNC0(card));
	}
	card->stats.rx_dropped++;
	return NULL;
}