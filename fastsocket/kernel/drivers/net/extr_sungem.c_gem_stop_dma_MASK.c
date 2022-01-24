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
 scalar_t__ TXDMA_CFG ; 
 int TXDMA_CFG_ENABLE ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct gem *gp)
{
	u32 val;

	/* We are done rocking, turn everything off. */
	val = FUNC0(gp->regs + TXDMA_CFG);
	FUNC1(val & ~TXDMA_CFG_ENABLE, gp->regs + TXDMA_CFG);
	val = FUNC0(gp->regs + RXDMA_CFG);
	FUNC1(val & ~RXDMA_CFG_ENABLE, gp->regs + RXDMA_CFG);
	val = FUNC0(gp->regs + MAC_TXCFG);
	FUNC1(val & ~MAC_TXCFG_ENAB, gp->regs + MAC_TXCFG);
	val = FUNC0(gp->regs + MAC_RXCFG);
	FUNC1(val & ~MAC_RXCFG_ENAB, gp->regs + MAC_RXCFG);

	(void) FUNC0(gp->regs + MAC_RXCFG);

	/* Need to wait a bit ... done by the caller */
}