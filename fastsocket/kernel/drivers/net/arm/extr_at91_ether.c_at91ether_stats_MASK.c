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
struct net_device_stats {int rx_packets; int rx_frame_errors; int rx_length_errors; int rx_crc_errors; int rx_fifo_errors; int rx_errors; int tx_packets; int tx_fifo_errors; int tx_carrier_errors; int tx_heartbeat_errors; int tx_window_errors; int tx_aborted_errors; int collisions; } ;
struct net_device {struct net_device_stats stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT91_EMAC_ALE ; 
 int /*<<< orphan*/  AT91_EMAC_CDE ; 
 int /*<<< orphan*/  AT91_EMAC_CSE ; 
 int /*<<< orphan*/  AT91_EMAC_DRFC ; 
 int /*<<< orphan*/  AT91_EMAC_ECOL ; 
 int /*<<< orphan*/  AT91_EMAC_ELR ; 
 int /*<<< orphan*/  AT91_EMAC_FRA ; 
 int /*<<< orphan*/  AT91_EMAC_LCOL ; 
 int /*<<< orphan*/  AT91_EMAC_MCOL ; 
 int /*<<< orphan*/  AT91_EMAC_OK ; 
 int /*<<< orphan*/  AT91_EMAC_RJB ; 
 int /*<<< orphan*/  AT91_EMAC_SCOL ; 
 int /*<<< orphan*/  AT91_EMAC_SEQE ; 
 int /*<<< orphan*/  AT91_EMAC_SQEE ; 
 int /*<<< orphan*/  AT91_EMAC_TUE ; 
 int /*<<< orphan*/  AT91_EMAC_USF ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct net_device*) ; 

__attribute__((used)) static struct net_device_stats *FUNC2(struct net_device *dev)
{
	int ale, lenerr, seqe, lcol, ecol;

	if (FUNC1(dev)) {
		dev->stats.rx_packets += FUNC0(AT91_EMAC_OK);		/* Good frames received */
		ale = FUNC0(AT91_EMAC_ALE);
		dev->stats.rx_frame_errors += ale;				/* Alignment errors */
		lenerr = FUNC0(AT91_EMAC_ELR) + FUNC0(AT91_EMAC_USF);
		dev->stats.rx_length_errors += lenerr;				/* Excessive Length or Undersize Frame error */
		seqe = FUNC0(AT91_EMAC_SEQE);
		dev->stats.rx_crc_errors += seqe;				/* CRC error */
		dev->stats.rx_fifo_errors += FUNC0(AT91_EMAC_DRFC);	/* Receive buffer not available */
		dev->stats.rx_errors += (ale + lenerr + seqe
			+ FUNC0(AT91_EMAC_CDE) + FUNC0(AT91_EMAC_RJB));

		dev->stats.tx_packets += FUNC0(AT91_EMAC_FRA);		/* Frames successfully transmitted */
		dev->stats.tx_fifo_errors += FUNC0(AT91_EMAC_TUE);	/* Transmit FIFO underruns */
		dev->stats.tx_carrier_errors += FUNC0(AT91_EMAC_CSE);	/* Carrier Sense errors */
		dev->stats.tx_heartbeat_errors += FUNC0(AT91_EMAC_SQEE);/* Heartbeat error */

		lcol = FUNC0(AT91_EMAC_LCOL);
		ecol = FUNC0(AT91_EMAC_ECOL);
		dev->stats.tx_window_errors += lcol;			/* Late collisions */
		dev->stats.tx_aborted_errors += ecol;			/* 16 collisions */

		dev->stats.collisions += (FUNC0(AT91_EMAC_SCOL) + FUNC0(AT91_EMAC_MCOL) + lcol + ecol);
	}
	return &dev->stats;
}