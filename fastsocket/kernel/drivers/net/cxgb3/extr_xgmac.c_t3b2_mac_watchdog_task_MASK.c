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
typedef  int /*<<< orphan*/  u64 ;
struct mac_stats {scalar_t__ rx_pause; int /*<<< orphan*/  tx_frames; } ;
struct cmac {unsigned int tx_tcnt; scalar_t__ rx_pause; int toggle_cnt; unsigned int tx_xcnt; scalar_t__ offset; scalar_t__ txen; int /*<<< orphan*/  tx_mcnt; struct mac_stats stats; struct adapter* adapter; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 scalar_t__ A_TP_PIO_ADDR ; 
 scalar_t__ A_TP_PIO_DATA ; 
 scalar_t__ A_TP_TX_DROP_CNT_CH0 ; 
 scalar_t__ A_XGM_TX_CTRL ; 
 scalar_t__ A_XGM_TX_SPI4_SOP_EOP_CNT ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct cmac*) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct cmac*) ; 

int FUNC6(struct cmac *mac)
{
	struct adapter *adap = mac->adapter;
	struct mac_stats *s = &mac->stats;
	unsigned int tx_tcnt, tx_xcnt;
	u64 tx_mcnt = s->tx_frames;
	int status;

	status = 0;
	tx_xcnt = 1;		/* By default tx_xcnt is making progress */
	tx_tcnt = mac->tx_tcnt;	/* If tx_mcnt is progressing ignore tx_tcnt */
	if (tx_mcnt == mac->tx_mcnt && mac->rx_pause == s->rx_pause) {
		tx_xcnt = (FUNC1(FUNC3(adap,
						A_XGM_TX_SPI4_SOP_EOP_CNT +
					       	mac->offset)));
		if (tx_xcnt == 0) {
			FUNC4(adap, A_TP_PIO_ADDR,
				     A_TP_TX_DROP_CNT_CH0 + FUNC2(mac));
			tx_tcnt = (FUNC0(FUNC3(adap,
						      A_TP_PIO_DATA)));
		} else {
			goto out;
		}
	} else {
		mac->toggle_cnt = 0;
		goto out;
	}

	if ((tx_tcnt != mac->tx_tcnt) && (mac->tx_xcnt == 0)) {
		if (mac->toggle_cnt > 4) {
			status = 2;
			goto out;
		} else {
			status = 1;
			goto out;
		}
	} else {
		mac->toggle_cnt = 0;
		goto out;
	}

out:
	mac->tx_tcnt = tx_tcnt;
	mac->tx_xcnt = tx_xcnt;
	mac->tx_mcnt = s->tx_frames;
	mac->rx_pause = s->rx_pause;
	if (status == 1) {
		FUNC4(adap, A_XGM_TX_CTRL + mac->offset, 0);
		FUNC3(adap, A_XGM_TX_CTRL + mac->offset);  /* flush */
		FUNC4(adap, A_XGM_TX_CTRL + mac->offset, mac->txen);
		FUNC3(adap, A_XGM_TX_CTRL + mac->offset);  /* flush */
		mac->toggle_cnt++;
	} else if (status == 2) {
		FUNC5(mac);
		mac->toggle_cnt = 0;
	}
	return status;
}