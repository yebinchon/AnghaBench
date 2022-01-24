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
typedef  size_t u32 ;
struct emac_rxch {int queue_active; int /*<<< orphan*/  active_queue_head; int /*<<< orphan*/  mac_addr; } ;
struct emac_priv {int speed; scalar_t__ duplex; int rx_addr_type; int /*<<< orphan*/  napi; struct emac_rxch** rxch; } ;

/* Variables and functions */
 size_t FUNC0 (size_t) ; 
 scalar_t__ DUPLEX_FULL ; 
 int EMAC_DEF_BCAST_CH ; 
 scalar_t__ EMAC_DEF_BCAST_EN ; 
 size_t EMAC_DEF_BUFFER_OFFSET ; 
 scalar_t__ EMAC_DEF_ERROR_FRAME_EN ; 
 scalar_t__ EMAC_DEF_MACCTRL_FRAME_EN ; 
 size_t EMAC_DEF_MAX_FRAME_SIZE ; 
 size_t EMAC_DEF_MAX_RX_CH ; 
 size_t EMAC_DEF_MAX_TX_CH ; 
 int EMAC_DEF_MCAST_CH ; 
 scalar_t__ EMAC_DEF_MCAST_EN ; 
 scalar_t__ EMAC_DEF_NO_BUFF_CHAIN ; 
 scalar_t__ EMAC_DEF_PASS_CRC ; 
 int EMAC_DEF_PROM_CH ; 
 scalar_t__ EMAC_DEF_PROM_EN ; 
 scalar_t__ EMAC_DEF_QOS_EN ; 
 scalar_t__ EMAC_DEF_SHORT_FRAME_EN ; 
 scalar_t__ EMAC_DEF_TXPACING_EN ; 
 scalar_t__ EMAC_DEF_TXPRIO_FIXED ; 
 int /*<<< orphan*/  EMAC_MACCONFIG ; 
 int /*<<< orphan*/  EMAC_MACCONTROL ; 
 int EMAC_MACCONTROL_GIGABITEN ; 
 size_t EMAC_MACCONTROL_GMIIEN ; 
 int EMAC_MACCONTROL_TXPACEEN ; 
 int EMAC_MACCONTROL_TXPTYPE ; 
 int /*<<< orphan*/  EMAC_MACINTMASKSET ; 
 size_t EMAC_MAC_HOST_ERR_INTMASK_VAL ; 
 int /*<<< orphan*/  EMAC_RXBUFFEROFFSET ; 
 int /*<<< orphan*/  EMAC_RXCONTROL ; 
 int /*<<< orphan*/  EMAC_RXFILTERLOWTHRESH ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int /*<<< orphan*/  EMAC_RXINTMASKSET ; 
 int /*<<< orphan*/  EMAC_RXMAXLEN ; 
 int /*<<< orphan*/  EMAC_RXMBPENABLE ; 
 int EMAC_RXMBP_BROADCH_SHIFT ; 
 int EMAC_RXMBP_BROADEN_MASK ; 
 int EMAC_RXMBP_CAFEN_MASK ; 
 int EMAC_RXMBP_CEFEN_MASK ; 
 int EMAC_RXMBP_CHMASK ; 
 int EMAC_RXMBP_CMFEN_MASK ; 
 int EMAC_RXMBP_CSFEN_MASK ; 
 int EMAC_RXMBP_MULTICH_SHIFT ; 
 int EMAC_RXMBP_MULTIEN_MASK ; 
 int EMAC_RXMBP_NOCHAIN_MASK ; 
 int EMAC_RXMBP_PASSCRC_MASK ; 
 int EMAC_RXMBP_PROMCH_SHIFT ; 
 int EMAC_RXMBP_QOSEN_MASK ; 
 int /*<<< orphan*/  EMAC_RXUNICASTCLEAR ; 
 size_t EMAC_RX_BUFFER_OFFSET_MASK ; 
 size_t EMAC_RX_CONTROL_RX_ENABLE_VAL ; 
 size_t EMAC_RX_MAX_LEN_MASK ; 
 size_t EMAC_RX_UNICAST_CLEAR_ALL ; 
 int /*<<< orphan*/  EMAC_SOFTRESET ; 
 int /*<<< orphan*/  EMAC_TXCONTROL ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 int /*<<< orphan*/  EMAC_TXINTMASKSET ; 
 size_t EMAC_TX_CONTROL_TX_ENABLE_VAL ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct emac_priv*) ; 
 int /*<<< orphan*/  FUNC5 (struct emac_priv*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct emac_priv*,size_t,int /*<<< orphan*/ ) ; 
 size_t FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct emac_priv *priv)
{
	u32 ch, val, mbp_enable, mac_control;

	/* Soft reset */
	FUNC9(EMAC_SOFTRESET, 1);
	while (FUNC6(EMAC_SOFTRESET))
		FUNC3();

	/* Disable interrupt & Set pacing for more interrupts initially */
	FUNC4(priv);

	/* Full duplex enable bit set when auto negotiation happens */
	mac_control =
		(((EMAC_DEF_TXPRIO_FIXED) ? (EMAC_MACCONTROL_TXPTYPE) : 0x0) |
		((priv->speed == 1000) ? EMAC_MACCONTROL_GIGABITEN : 0x0) |
		((EMAC_DEF_TXPACING_EN) ? (EMAC_MACCONTROL_TXPACEEN) : 0x0) |
		((priv->duplex == DUPLEX_FULL) ? 0x1 : 0));
	FUNC9(EMAC_MACCONTROL, mac_control);

	mbp_enable =
		(((EMAC_DEF_PASS_CRC) ? (EMAC_RXMBP_PASSCRC_MASK) : 0x0) |
		((EMAC_DEF_QOS_EN) ? (EMAC_RXMBP_QOSEN_MASK) : 0x0) |
		 ((EMAC_DEF_NO_BUFF_CHAIN) ? (EMAC_RXMBP_NOCHAIN_MASK) : 0x0) |
		 ((EMAC_DEF_MACCTRL_FRAME_EN) ? (EMAC_RXMBP_CMFEN_MASK) : 0x0) |
		 ((EMAC_DEF_SHORT_FRAME_EN) ? (EMAC_RXMBP_CSFEN_MASK) : 0x0) |
		 ((EMAC_DEF_ERROR_FRAME_EN) ? (EMAC_RXMBP_CEFEN_MASK) : 0x0) |
		 ((EMAC_DEF_PROM_EN) ? (EMAC_RXMBP_CAFEN_MASK) : 0x0) |
		 ((EMAC_DEF_PROM_CH & EMAC_RXMBP_CHMASK) << \
			EMAC_RXMBP_PROMCH_SHIFT) |
		 ((EMAC_DEF_BCAST_EN) ? (EMAC_RXMBP_BROADEN_MASK) : 0x0) |
		 ((EMAC_DEF_BCAST_CH & EMAC_RXMBP_CHMASK) << \
			EMAC_RXMBP_BROADCH_SHIFT) |
		 ((EMAC_DEF_MCAST_EN) ? (EMAC_RXMBP_MULTIEN_MASK) : 0x0) |
		 ((EMAC_DEF_MCAST_CH & EMAC_RXMBP_CHMASK) << \
			EMAC_RXMBP_MULTICH_SHIFT));
	FUNC9(EMAC_RXMBPENABLE, mbp_enable);
	FUNC9(EMAC_RXMAXLEN, (EMAC_DEF_MAX_FRAME_SIZE &
				   EMAC_RX_MAX_LEN_MASK));
	FUNC9(EMAC_RXBUFFEROFFSET, (EMAC_DEF_BUFFER_OFFSET &
					 EMAC_RX_BUFFER_OFFSET_MASK));
	FUNC9(EMAC_RXFILTERLOWTHRESH, 0);
	FUNC9(EMAC_RXUNICASTCLEAR, EMAC_RX_UNICAST_CLEAR_ALL);
	priv->rx_addr_type = (FUNC6(EMAC_MACCONFIG) >> 8) & 0xFF;

	val = FUNC6(EMAC_TXCONTROL);
	val |= EMAC_TX_CONTROL_TX_ENABLE_VAL;
	FUNC9(EMAC_TXCONTROL, val);
	val = FUNC6(EMAC_RXCONTROL);
	val |= EMAC_RX_CONTROL_RX_ENABLE_VAL;
	FUNC9(EMAC_RXCONTROL, val);
	FUNC9(EMAC_MACINTMASKSET, EMAC_MAC_HOST_ERR_INTMASK_VAL);

	for (ch = 0; ch < EMAC_DEF_MAX_TX_CH; ch++) {
		FUNC9(FUNC2(ch), 0);
		FUNC9(EMAC_TXINTMASKSET, FUNC0(ch));
	}
	for (ch = 0; ch < EMAC_DEF_MAX_RX_CH; ch++) {
		struct emac_rxch *rxch = priv->rxch[ch];
		FUNC7(priv, ch, rxch->mac_addr);
		FUNC9(EMAC_RXINTMASKSET, FUNC0(ch));
		rxch->queue_active = 1;
		FUNC9(FUNC1(ch),
			   FUNC8(rxch->active_queue_head));
	}

	/* Enable MII */
	val = FUNC6(EMAC_MACCONTROL);
	val |= (EMAC_MACCONTROL_GMIIEN);
	FUNC9(EMAC_MACCONTROL, val);

	/* Enable NAPI and interrupts */
	FUNC10(&priv->napi);
	FUNC5(priv);
	return 0;

}