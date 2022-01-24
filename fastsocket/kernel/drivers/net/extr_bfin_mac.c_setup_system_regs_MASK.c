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
struct net_device {int dummy; } ;

/* Variables and functions */
 int CROLL ; 
 int RSTC ; 
 unsigned short RXCKS ; 
 unsigned short RXDWA ; 
 unsigned short FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (unsigned short) ; 

void FUNC11(struct net_device *dev)
{
	unsigned short sysctl;

	/*
	 * Odd word alignment for Receive Frame DMA word
	 * Configure checksum support and rcve frame word alignment
	 */
	sysctl = FUNC0();
#if defined(BFIN_MAC_CSUM_OFFLOAD)
	sysctl |= RXDWA | RXCKS;
#else
	sysctl |= RXDWA;
#endif
	FUNC10(sysctl);

	FUNC9(RSTC | CROLL);

	/* Initialize the TX DMA channel registers */
	FUNC5(0);
	FUNC6(4);
	FUNC7(0);
	FUNC8(0);

	/* Initialize the RX DMA channel registers */
	FUNC1(0);
	FUNC2(4);
	FUNC3(0);
	FUNC4(0);
}