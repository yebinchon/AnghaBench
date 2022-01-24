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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_6__ {int ifs; int signal; int service; int length_low; int length_high; } ;
struct TYPE_7__ {TYPE_2__ plcp; } ;
struct txentry_desc {int retry_limit; scalar_t__ rate_mode; int length; int key_idx; int iv_offset; int /*<<< orphan*/  flags; TYPE_3__ u; int /*<<< orphan*/  cipher; } ;
struct skb_frame_desc {int /*<<< orphan*/  desc_len; int /*<<< orphan*/ * desc; int /*<<< orphan*/  flags; int /*<<< orphan*/ * iv; } ;
struct queue_entry {TYPE_1__* queue; TYPE_4__* skb; } ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_8__ {scalar_t__ data; } ;
struct TYPE_5__ {int aifs; int cw_min; int cw_max; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENTRY_TXD_ACK ; 
 int /*<<< orphan*/  ENTRY_TXD_ENCRYPT ; 
 int /*<<< orphan*/  ENTRY_TXD_FIRST_FRAGMENT ; 
 int /*<<< orphan*/  ENTRY_TXD_MORE_FRAG ; 
 int /*<<< orphan*/  ENTRY_TXD_REQ_TIMESTAMP ; 
 scalar_t__ RATE_MODE_OFDM ; 
 int /*<<< orphan*/  SKBDESC_DESC_IN_SKB ; 
 int /*<<< orphan*/  TXD_DESC_SIZE ; 
 int /*<<< orphan*/  TXD_W0_ACK ; 
 int /*<<< orphan*/  TXD_W0_CIPHER ; 
 int /*<<< orphan*/  TXD_W0_DATABYTE_COUNT ; 
 int /*<<< orphan*/  TXD_W0_IFS ; 
 int /*<<< orphan*/  TXD_W0_KEY_ID ; 
 int /*<<< orphan*/  TXD_W0_MORE_FRAG ; 
 int /*<<< orphan*/  TXD_W0_NEW_SEQ ; 
 int /*<<< orphan*/  TXD_W0_OFDM ; 
 int /*<<< orphan*/  TXD_W0_RETRY_LIMIT ; 
 int /*<<< orphan*/  TXD_W0_TIMESTAMP ; 
 int /*<<< orphan*/  TXD_W1_AIFS ; 
 int /*<<< orphan*/  TXD_W1_CWMAX ; 
 int /*<<< orphan*/  TXD_W1_CWMIN ; 
 int /*<<< orphan*/  TXD_W1_IV_OFFSET ; 
 int /*<<< orphan*/  TXD_W2_PLCP_LENGTH_HIGH ; 
 int /*<<< orphan*/  TXD_W2_PLCP_LENGTH_LOW ; 
 int /*<<< orphan*/  TXD_W2_PLCP_SERVICE ; 
 int /*<<< orphan*/  TXD_W2_PLCP_SIGNAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct skb_frame_desc* FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct queue_entry *entry,
				    struct txentry_desc *txdesc)
{
	struct skb_frame_desc *skbdesc = FUNC1(entry->skb);
	__le32 *txd = (__le32 *) entry->skb->data;
	u32 word;

	/*
	 * Start writing the descriptor words.
	 */
	FUNC2(txd, 0, &word);
	FUNC4(&word, TXD_W0_RETRY_LIMIT, txdesc->retry_limit);
	FUNC4(&word, TXD_W0_MORE_FRAG,
			   FUNC5(ENTRY_TXD_MORE_FRAG, &txdesc->flags));
	FUNC4(&word, TXD_W0_ACK,
			   FUNC5(ENTRY_TXD_ACK, &txdesc->flags));
	FUNC4(&word, TXD_W0_TIMESTAMP,
			   FUNC5(ENTRY_TXD_REQ_TIMESTAMP, &txdesc->flags));
	FUNC4(&word, TXD_W0_OFDM,
			   (txdesc->rate_mode == RATE_MODE_OFDM));
	FUNC4(&word, TXD_W0_NEW_SEQ,
			   FUNC5(ENTRY_TXD_FIRST_FRAGMENT, &txdesc->flags));
	FUNC4(&word, TXD_W0_IFS, txdesc->u.plcp.ifs);
	FUNC4(&word, TXD_W0_DATABYTE_COUNT, txdesc->length);
	FUNC4(&word, TXD_W0_CIPHER, !!txdesc->cipher);
	FUNC4(&word, TXD_W0_KEY_ID, txdesc->key_idx);
	FUNC3(txd, 0, word);

	FUNC2(txd, 1, &word);
	FUNC4(&word, TXD_W1_IV_OFFSET, txdesc->iv_offset);
	FUNC4(&word, TXD_W1_AIFS, entry->queue->aifs);
	FUNC4(&word, TXD_W1_CWMIN, entry->queue->cw_min);
	FUNC4(&word, TXD_W1_CWMAX, entry->queue->cw_max);
	FUNC3(txd, 1, word);

	FUNC2(txd, 2, &word);
	FUNC4(&word, TXD_W2_PLCP_SIGNAL, txdesc->u.plcp.signal);
	FUNC4(&word, TXD_W2_PLCP_SERVICE, txdesc->u.plcp.service);
	FUNC4(&word, TXD_W2_PLCP_LENGTH_LOW,
			   txdesc->u.plcp.length_low);
	FUNC4(&word, TXD_W2_PLCP_LENGTH_HIGH,
			   txdesc->u.plcp.length_high);
	FUNC3(txd, 2, word);

	if (FUNC5(ENTRY_TXD_ENCRYPT, &txdesc->flags)) {
		FUNC0(txd, 3, skbdesc->iv[0]);
		FUNC0(txd, 4, skbdesc->iv[1]);
	}

	/*
	 * Register descriptor details in skb frame descriptor.
	 */
	skbdesc->flags |= SKBDESC_DESC_IN_SKB;
	skbdesc->desc = txd;
	skbdesc->desc_len = TXD_DESC_SIZE;
}