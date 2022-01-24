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
typedef  int u32 ;
struct gem {scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ MAC_RXCFG ; 
 int MAC_RXCFG_ENAB ; 
 scalar_t__ MAC_TXCFG ; 
 int MAC_TXCFG_ENAB ; 
 scalar_t__ RXDMA_CFG ; 
 int RXDMA_CFG_ENABLE ; 
 scalar_t__ RXDMA_KICK ; 
 int RX_RING_SIZE ; 
 scalar_t__ TXDMA_CFG ; 
 int TXDMA_CFG_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct gem*) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct gem *gp)
{
	u32 val;

	/* We are ready to rock, turn everything on. */
	val = FUNC1(gp->regs + TXDMA_CFG);
	FUNC3(val | TXDMA_CFG_ENABLE, gp->regs + TXDMA_CFG);
	val = FUNC1(gp->regs + RXDMA_CFG);
	FUNC3(val | RXDMA_CFG_ENABLE, gp->regs + RXDMA_CFG);
	val = FUNC1(gp->regs + MAC_TXCFG);
	FUNC3(val | MAC_TXCFG_ENAB, gp->regs + MAC_TXCFG);
	val = FUNC1(gp->regs + MAC_RXCFG);
	FUNC3(val | MAC_RXCFG_ENAB, gp->regs + MAC_RXCFG);

	(void) FUNC1(gp->regs + MAC_RXCFG);
	FUNC2(100);

	FUNC0(gp);

	FUNC3(RX_RING_SIZE - 4, gp->regs + RXDMA_KICK);
}