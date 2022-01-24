#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct skge_port {int port; struct skge_hw* hw; } ;
struct skge_hw {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  xmac_offset; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 unsigned long HZ ; 
 int /*<<< orphan*/  XM_RXO_OK_HI ; 
 int /*<<< orphan*/  XM_RXO_OK_LO ; 
 int XM_SC_SNP_RXC ; 
 int XM_SC_SNP_TXC ; 
 int /*<<< orphan*/  XM_STAT_CMD ; 
 int /*<<< orphan*/  XM_TXO_OK_HI ; 
 int /*<<< orphan*/  XM_TXO_OK_LO ; 
 unsigned long jiffies ; 
 TYPE_1__* skge_stats ; 
 scalar_t__ FUNC1 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct skge_hw*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct skge_hw*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct skge_hw*,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct skge_port *skge, u64 *data)
{
	struct skge_hw *hw = skge->hw;
	int port = skge->port;
	int i;
	unsigned long timeout = jiffies + HZ;

	FUNC5(hw, port,
			XM_STAT_CMD, XM_SC_SNP_TXC | XM_SC_SNP_RXC);

	/* wait for update to complete */
	while (FUNC3(hw, port, XM_STAT_CMD)
	       & (XM_SC_SNP_TXC | XM_SC_SNP_RXC)) {
		if (FUNC1(jiffies, timeout))
			break;
		FUNC2(10);
	}

	/* special case for 64 bit octet counter */
	data[0] = (u64) FUNC4(hw, port, XM_TXO_OK_HI) << 32
		| FUNC4(hw, port, XM_TXO_OK_LO);
	data[1] = (u64) FUNC4(hw, port, XM_RXO_OK_HI) << 32
		| FUNC4(hw, port, XM_RXO_OK_LO);

	for (i = 2; i < FUNC0(skge_stats); i++)
		data[i] = FUNC4(hw, port, skge_stats[i].xmac_offset);
}