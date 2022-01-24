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
typedef  int u16 ;
struct ks_net {int all_mcast; scalar_t__ enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  KS_RXCR1 ; 
 int RXCR1_FILTER_MASK ; 
 int RXCR1_RXAE ; 
 int RXCR1_RXMAFMA ; 
 int RXCR1_RXPAFMA ; 
 int FUNC0 (struct ks_net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ks_net*) ; 
 int /*<<< orphan*/  FUNC2 (struct ks_net*) ; 
 int /*<<< orphan*/  FUNC3 (struct ks_net*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct ks_net *ks, u16 mcast)
{
	u16	cntl;

	ks->all_mcast = mcast;
	FUNC2(ks);  /* Stop receiving for reconfiguration */
	cntl = FUNC0(ks, KS_RXCR1);
	cntl &= ~RXCR1_FILTER_MASK;
	if (mcast)
		/* Enable "Perfect with Multicast address passed mode" */
		cntl |= (RXCR1_RXAE | RXCR1_RXMAFMA | RXCR1_RXPAFMA);
	else
		/**
		 * Disable "Perfect with Multicast address passed
		 * mode" (normal mode).
		 */
		cntl |= RXCR1_RXPAFMA;

	FUNC3(ks, KS_RXCR1, cntl);

	if (ks->enabled)
		FUNC1(ks);
}