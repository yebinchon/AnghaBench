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
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_MPS_CFG ; 
 int /*<<< orphan*/  A_PM1_TX_CFG ; 
 int /*<<< orphan*/  A_TP_PC_CONFIG ; 
 int /*<<< orphan*/  A_TP_TX_MOD_QUEUE_REQ_MAP ; 
 int /*<<< orphan*/  A_TP_TX_MOD_QUE_TABLE ; 
 int /*<<< orphan*/  A_ULPRX_CTL ; 
 int /*<<< orphan*/  A_ULPTX_CONFIG ; 
 int /*<<< orphan*/  A_ULPTX_DMA_WEIGHT ; 
 int /*<<< orphan*/  F_CFG_RR_ARB ; 
 int F_ENFORCEPKT ; 
 int F_PORT0ACTIVE ; 
 int F_PORT1ACTIVE ; 
 int /*<<< orphan*/  F_ROUND_ROBIN ; 
 int F_TPRXPORTEN ; 
 int F_TPTXPORT0EN ; 
 int F_TPTXPORT1EN ; 
 int /*<<< orphan*/  F_TXTOSQUEUEMAPMODE ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct adapter *adap, unsigned int chan_map)
{
	int i;

	if (chan_map != 3) {                                 /* one channel */
		FUNC3(adap, A_ULPRX_CTL, F_ROUND_ROBIN, 0);
		FUNC3(adap, A_ULPTX_CONFIG, F_CFG_RR_ARB, 0);
		FUNC4(adap, A_MPS_CFG, F_TPRXPORTEN | F_ENFORCEPKT |
			     (chan_map == 1 ? F_TPTXPORT0EN | F_PORT0ACTIVE :
					      F_TPTXPORT1EN | F_PORT1ACTIVE));
		FUNC4(adap, A_PM1_TX_CFG,
			     chan_map == 1 ? 0xffffffff : 0);
	} else {                                             /* two channels */
		FUNC3(adap, A_ULPRX_CTL, 0, F_ROUND_ROBIN);
		FUNC3(adap, A_ULPTX_CONFIG, 0, F_CFG_RR_ARB);
		FUNC4(adap, A_ULPTX_DMA_WEIGHT,
			     FUNC1(16) | FUNC0(16));
		FUNC4(adap, A_MPS_CFG, F_TPTXPORT0EN | F_TPTXPORT1EN |
			     F_TPRXPORTEN | F_PORT0ACTIVE | F_PORT1ACTIVE |
			     F_ENFORCEPKT);
		FUNC4(adap, A_PM1_TX_CFG, 0x80008000);
		FUNC3(adap, A_TP_PC_CONFIG, 0, F_TXTOSQUEUEMAPMODE);
		FUNC4(adap, A_TP_TX_MOD_QUEUE_REQ_MAP,
			     FUNC2(0xaa));
		for (i = 0; i < 16; i++)
			FUNC4(adap, A_TP_TX_MOD_QUE_TABLE,
				     (i << 16) | 0x1010);
	}
}