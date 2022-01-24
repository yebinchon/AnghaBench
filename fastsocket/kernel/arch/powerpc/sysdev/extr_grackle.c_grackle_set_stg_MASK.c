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
struct pci_controller {int /*<<< orphan*/  cfg_data; int /*<<< orphan*/  cfg_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 unsigned int GRACKLE_PICR1_STG ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static inline void FUNC4(struct pci_controller* bp, int enable)
{
	unsigned int val;

	FUNC2(bp->cfg_addr, FUNC0(0, 0, 0xa8));
	val = FUNC1(bp->cfg_data);
	val = enable? (val | GRACKLE_PICR1_STG) :
		(val & ~GRACKLE_PICR1_STG);
	FUNC2(bp->cfg_addr, FUNC0(0, 0, 0xa8));
	FUNC3(bp->cfg_data, val);
	(void)FUNC1(bp->cfg_data);
}