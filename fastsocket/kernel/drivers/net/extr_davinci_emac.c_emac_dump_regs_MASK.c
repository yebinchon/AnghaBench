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
struct emac_priv {TYPE_1__* ndev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  EMAC_CTRL_EWCTL ; 
 int /*<<< orphan*/  EMAC_CTRL_EWINTTCNT ; 
 int /*<<< orphan*/  EMAC_EMCONTROL ; 
 int /*<<< orphan*/  EMAC_FIFOCONTROL ; 
 int /*<<< orphan*/  EMAC_MACCONFIG ; 
 int /*<<< orphan*/  EMAC_MACCONTROL ; 
 int /*<<< orphan*/  EMAC_MACINTSTATMASKED ; 
 int /*<<< orphan*/  EMAC_MACINTSTATRAW ; 
 int /*<<< orphan*/  EMAC_MACINVECTOR ; 
 int /*<<< orphan*/  EMAC_MACSTATUS ; 
 int /*<<< orphan*/  EMAC_NETOCTETS ; 
 int /*<<< orphan*/  EMAC_RXALIGNCODEERRORS ; 
 int /*<<< orphan*/  EMAC_RXBCASTFRAMES ; 
 int /*<<< orphan*/  EMAC_RXCONTROL ; 
 int /*<<< orphan*/  EMAC_RXCRCERRORS ; 
 int /*<<< orphan*/  EMAC_RXDMAOVERRUNS ; 
 int /*<<< orphan*/  EMAC_RXFILTERED ; 
 int /*<<< orphan*/  EMAC_RXFRAGMENTS ; 
 int /*<<< orphan*/  EMAC_RXGOODFRAMES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EMAC_RXIDVER ; 
 int /*<<< orphan*/  EMAC_RXINTMASKSET ; 
 int /*<<< orphan*/  EMAC_RXINTSTATMASKED ; 
 int /*<<< orphan*/  EMAC_RXINTSTATRAW ; 
 int /*<<< orphan*/  EMAC_RXJABBER ; 
 int /*<<< orphan*/  EMAC_RXMAXLEN ; 
 int /*<<< orphan*/  EMAC_RXMBPENABLE ; 
 int /*<<< orphan*/  EMAC_RXMCASTFRAMES ; 
 int /*<<< orphan*/  EMAC_RXMOFOVERRUNS ; 
 int /*<<< orphan*/  EMAC_RXOCTETS ; 
 int /*<<< orphan*/  EMAC_RXOVERSIZED ; 
 int /*<<< orphan*/  EMAC_RXPAUSEFRAMES ; 
 int /*<<< orphan*/  EMAC_RXQOSFILTERED ; 
 int /*<<< orphan*/  EMAC_RXSOFOVERRUNS ; 
 int /*<<< orphan*/  EMAC_RXUNDERSIZED ; 
 int /*<<< orphan*/  EMAC_RXUNICASTSET ; 
 int /*<<< orphan*/  EMAC_TXBCASTFRAMES ; 
 int /*<<< orphan*/  EMAC_TXCARRIERSENSE ; 
 int /*<<< orphan*/  EMAC_TXCOLLISION ; 
 int /*<<< orphan*/  EMAC_TXCONTROL ; 
 int /*<<< orphan*/  EMAC_TXDEFERRED ; 
 int /*<<< orphan*/  EMAC_TXEXCESSIVECOLL ; 
 int /*<<< orphan*/  EMAC_TXGOODFRAMES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EMAC_TXIDVER ; 
 int /*<<< orphan*/  EMAC_TXINTMASKSET ; 
 int /*<<< orphan*/  EMAC_TXINTSTATMASKED ; 
 int /*<<< orphan*/  EMAC_TXINTSTATRAW ; 
 int /*<<< orphan*/  EMAC_TXLATECOLL ; 
 int /*<<< orphan*/  EMAC_TXMCASTFRAMES ; 
 int /*<<< orphan*/  EMAC_TXMULTICOLL ; 
 int /*<<< orphan*/  EMAC_TXOCTETS ; 
 int /*<<< orphan*/  EMAC_TXPAUSEFRAMES ; 
 int /*<<< orphan*/  EMAC_TXSINGLECOLL ; 
 int /*<<< orphan*/  EMAC_TXUNDERRUN ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct emac_priv *priv)
{
	struct device *emac_dev = &priv->ndev->dev;

	/* Print important registers in EMAC */
	FUNC2(emac_dev, "EMAC Basic registers\n");
	FUNC2(emac_dev, "EMAC: EWCTL: %08X, EWINTTCNT: %08X\n",
		FUNC3(EMAC_CTRL_EWCTL),
		FUNC3(EMAC_CTRL_EWINTTCNT));
	FUNC2(emac_dev, "EMAC: TXID: %08X %s, RXID: %08X %s\n",
		FUNC4(EMAC_TXIDVER),
		((FUNC4(EMAC_TXCONTROL)) ? "enabled" : "disabled"),
		FUNC4(EMAC_RXIDVER),
		((FUNC4(EMAC_RXCONTROL)) ? "enabled" : "disabled"));
	FUNC2(emac_dev, "EMAC: TXIntRaw:%08X, TxIntMasked: %08X, "\
		"TxIntMasSet: %08X\n", FUNC4(EMAC_TXINTSTATRAW),
		FUNC4(EMAC_TXINTSTATMASKED), FUNC4(EMAC_TXINTMASKSET));
	FUNC2(emac_dev, "EMAC: RXIntRaw:%08X, RxIntMasked: %08X, "\
		"RxIntMasSet: %08X\n", FUNC4(EMAC_RXINTSTATRAW),
		FUNC4(EMAC_RXINTSTATMASKED), FUNC4(EMAC_RXINTMASKSET));
	FUNC2(emac_dev, "EMAC: MacIntRaw:%08X, MacIntMasked: %08X, "\
		"MacInVector=%08X\n", FUNC4(EMAC_MACINTSTATRAW),
		FUNC4(EMAC_MACINTSTATMASKED), FUNC4(EMAC_MACINVECTOR));
	FUNC2(emac_dev, "EMAC: EmuControl:%08X, FifoControl: %08X\n",
		FUNC4(EMAC_EMCONTROL), FUNC4(EMAC_FIFOCONTROL));
	FUNC2(emac_dev, "EMAC: MBPEnable:%08X, RXUnicastSet: %08X, "\
		"RXMaxLen=%08X\n", FUNC4(EMAC_RXMBPENABLE),
		FUNC4(EMAC_RXUNICASTSET), FUNC4(EMAC_RXMAXLEN));
	FUNC2(emac_dev, "EMAC: MacControl:%08X, MacStatus: %08X, "\
		"MacConfig=%08X\n", FUNC4(EMAC_MACCONTROL),
		FUNC4(EMAC_MACSTATUS), FUNC4(EMAC_MACCONFIG));
	FUNC2(emac_dev, "EMAC: TXHDP[0]:%08X, RXHDP[0]: %08X\n",
		FUNC4(FUNC1(0)), FUNC4(FUNC0(0)));
	FUNC2(emac_dev, "EMAC Statistics\n");
	FUNC2(emac_dev, "EMAC: rx_good_frames:%d\n",
		FUNC4(EMAC_RXGOODFRAMES));
	FUNC2(emac_dev, "EMAC: rx_broadcast_frames:%d\n",
		FUNC4(EMAC_RXBCASTFRAMES));
	FUNC2(emac_dev, "EMAC: rx_multicast_frames:%d\n",
		FUNC4(EMAC_RXMCASTFRAMES));
	FUNC2(emac_dev, "EMAC: rx_pause_frames:%d\n",
		FUNC4(EMAC_RXPAUSEFRAMES));
	FUNC2(emac_dev, "EMAC: rx_crcerrors:%d\n",
		FUNC4(EMAC_RXCRCERRORS));
	FUNC2(emac_dev, "EMAC: rx_align_code_errors:%d\n",
		FUNC4(EMAC_RXALIGNCODEERRORS));
	FUNC2(emac_dev, "EMAC: rx_oversized_frames:%d\n",
		FUNC4(EMAC_RXOVERSIZED));
	FUNC2(emac_dev, "EMAC: rx_jabber_frames:%d\n",
		FUNC4(EMAC_RXJABBER));
	FUNC2(emac_dev, "EMAC: rx_undersized_frames:%d\n",
		FUNC4(EMAC_RXUNDERSIZED));
	FUNC2(emac_dev, "EMAC: rx_fragments:%d\n",
		FUNC4(EMAC_RXFRAGMENTS));
	FUNC2(emac_dev, "EMAC: rx_filtered_frames:%d\n",
		FUNC4(EMAC_RXFILTERED));
	FUNC2(emac_dev, "EMAC: rx_qos_filtered_frames:%d\n",
		FUNC4(EMAC_RXQOSFILTERED));
	FUNC2(emac_dev, "EMAC: rx_octets:%d\n",
		FUNC4(EMAC_RXOCTETS));
	FUNC2(emac_dev, "EMAC: tx_goodframes:%d\n",
		FUNC4(EMAC_TXGOODFRAMES));
	FUNC2(emac_dev, "EMAC: tx_bcastframes:%d\n",
		FUNC4(EMAC_TXBCASTFRAMES));
	FUNC2(emac_dev, "EMAC: tx_mcastframes:%d\n",
		FUNC4(EMAC_TXMCASTFRAMES));
	FUNC2(emac_dev, "EMAC: tx_pause_frames:%d\n",
		FUNC4(EMAC_TXPAUSEFRAMES));
	FUNC2(emac_dev, "EMAC: tx_deferred_frames:%d\n",
		FUNC4(EMAC_TXDEFERRED));
	FUNC2(emac_dev, "EMAC: tx_collision_frames:%d\n",
		FUNC4(EMAC_TXCOLLISION));
	FUNC2(emac_dev, "EMAC: tx_single_coll_frames:%d\n",
		FUNC4(EMAC_TXSINGLECOLL));
	FUNC2(emac_dev, "EMAC: tx_mult_coll_frames:%d\n",
		FUNC4(EMAC_TXMULTICOLL));
	FUNC2(emac_dev, "EMAC: tx_excessive_collisions:%d\n",
		FUNC4(EMAC_TXEXCESSIVECOLL));
	FUNC2(emac_dev, "EMAC: tx_late_collisions:%d\n",
		FUNC4(EMAC_TXLATECOLL));
	FUNC2(emac_dev, "EMAC: tx_underrun:%d\n",
		FUNC4(EMAC_TXUNDERRUN));
	FUNC2(emac_dev, "EMAC: tx_carrier_sense_errors:%d\n",
		FUNC4(EMAC_TXCARRIERSENSE));
	FUNC2(emac_dev, "EMAC: tx_octets:%d\n",
		FUNC4(EMAC_TXOCTETS));
	FUNC2(emac_dev, "EMAC: net_octets:%d\n",
		FUNC4(EMAC_NETOCTETS));
	FUNC2(emac_dev, "EMAC: rx_sof_overruns:%d\n",
		FUNC4(EMAC_RXSOFOVERRUNS));
	FUNC2(emac_dev, "EMAC: rx_mof_overruns:%d\n",
		FUNC4(EMAC_RXMOFOVERRUNS));
	FUNC2(emac_dev, "EMAC: rx_dma_overruns:%d\n",
		FUNC4(EMAC_RXDMAOVERRUNS));
}