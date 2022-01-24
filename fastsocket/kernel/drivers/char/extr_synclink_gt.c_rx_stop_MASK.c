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
struct slgt_info {int rx_enabled; int rx_restart; } ;

/* Variables and functions */
 unsigned short BIT1 ; 
 unsigned short BIT2 ; 
 scalar_t__ IRQ_RXDATA ; 
 unsigned short IRQ_RXIDLE ; 
 unsigned short IRQ_RXOVER ; 
 int /*<<< orphan*/  RCR ; 
 int /*<<< orphan*/  SSR ; 
 unsigned short FUNC0 (struct slgt_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct slgt_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct slgt_info*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct slgt_info*,int /*<<< orphan*/ ,unsigned short) ; 

__attribute__((used)) static void FUNC4(struct slgt_info *info)
{
	unsigned short val;

	/* disable and reset receiver */
	val = FUNC0(info, RCR) & ~BIT1;          /* clear enable bit */
	FUNC3(info, RCR, (unsigned short)(val | BIT2)); /* set reset bit */
	FUNC3(info, RCR, val);                  /* clear reset bit */

	FUNC2(info, IRQ_RXOVER + IRQ_RXDATA + IRQ_RXIDLE);

	/* clear pending rx interrupts */
	FUNC3(info, SSR, IRQ_RXIDLE + IRQ_RXOVER);

	FUNC1(info);

	info->rx_enabled = false;
	info->rx_restart = false;
}