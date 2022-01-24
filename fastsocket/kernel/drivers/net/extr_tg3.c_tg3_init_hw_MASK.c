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
struct tg3 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TG3PCI_MEM_WIN_BASE_ADDR ; 
 int /*<<< orphan*/  FUNC0 (struct tg3*) ; 
 int /*<<< orphan*/  FUNC1 (struct tg3*) ; 
 int FUNC2 (struct tg3*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct tg3*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct tg3 *tp, bool reset_phy)
{
	/* Chip may have been just powered on. If so, the boot code may still
	 * be running initialization. Wait for it to finish to avoid races in
	 * accessing the hardware.
	 */
	FUNC0(tp);
	FUNC1(tp);

	FUNC3(tp);

	FUNC4(TG3PCI_MEM_WIN_BASE_ADDR, 0);

	return FUNC2(tp, reset_phy);
}