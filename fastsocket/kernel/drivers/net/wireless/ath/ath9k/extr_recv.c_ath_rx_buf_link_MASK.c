#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int /*<<< orphan*/  data; } ;
struct TYPE_2__ {scalar_t__* rxlink; } ;
struct ath_softc {TYPE_1__ rx; struct ath_hw* sc_ah; } ;
struct ath_hw {int dummy; } ;
struct ath_desc {scalar_t__ ds_link; int /*<<< orphan*/  ds_vdata; int /*<<< orphan*/  ds_data; } ;
struct ath_common {int /*<<< orphan*/  rx_bufsize; } ;
struct ath_buf {scalar_t__ bf_daddr; struct sk_buff* bf_mpdu; int /*<<< orphan*/  bf_buf_addr; struct ath_desc* bf_desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ath_buf*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct ath_common* FUNC2 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hw*,struct ath_desc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct ath_softc *sc, struct ath_buf *bf)
{
	struct ath_hw *ah = sc->sc_ah;
	struct ath_common *common = FUNC2(ah);
	struct ath_desc *ds;
	struct sk_buff *skb;

	FUNC0(bf);

	ds = bf->bf_desc;
	ds->ds_link = 0; /* link to null */
	ds->ds_data = bf->bf_buf_addr;

	/* virtual addr of the beginning of the buffer. */
	skb = bf->bf_mpdu;
	FUNC1(skb == NULL);
	ds->ds_vdata = skb->data;

	/*
	 * setup rx descriptors. The rx_bufsize here tells the hardware
	 * how much data it can DMA to us and that we are prepared
	 * to process
	 */
	FUNC4(ah, ds,
			     common->rx_bufsize,
			     0);

	if (sc->rx.rxlink == NULL)
		FUNC3(ah, bf->bf_daddr);
	else
		*sc->rx.rxlink = bf->bf_daddr;

	sc->rx.rxlink = &ds->ds_link;
}