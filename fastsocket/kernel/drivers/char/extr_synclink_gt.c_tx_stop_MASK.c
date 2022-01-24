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
struct slgt_info {int tx_enabled; int tx_active; int /*<<< orphan*/  tx_timer; } ;

/* Variables and functions */
 unsigned short BIT1 ; 
 unsigned short BIT2 ; 
 scalar_t__ IRQ_TXDATA ; 
 scalar_t__ IRQ_TXIDLE ; 
 scalar_t__ IRQ_TXUNDER ; 
 int /*<<< orphan*/  SSR ; 
 int /*<<< orphan*/  TCR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned short FUNC1 (struct slgt_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct slgt_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct slgt_info*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct slgt_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct slgt_info*,int /*<<< orphan*/ ,unsigned short) ; 

__attribute__((used)) static void FUNC6(struct slgt_info *info)
{
	unsigned short val;

	FUNC0(&info->tx_timer);

	FUNC4(info);

	/* reset and disable transmitter */
	val = FUNC1(info, TCR) & ~BIT1;          /* clear enable bit */
	FUNC5(info, TCR, (unsigned short)(val | BIT2)); /* set reset bit */

	FUNC3(info, IRQ_TXDATA + IRQ_TXIDLE + IRQ_TXUNDER);

	/* clear tx idle and underrun status bit */
	FUNC5(info, SSR, (unsigned short)(IRQ_TXIDLE + IRQ_TXUNDER));

	FUNC2(info);

	info->tx_enabled = false;
	info->tx_active = false;
}