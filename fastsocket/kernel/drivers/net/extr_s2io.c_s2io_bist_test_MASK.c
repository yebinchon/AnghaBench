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
typedef  int uint64_t ;
typedef  int u8 ;
struct s2io_nic {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_BIST ; 
 int PCI_BIST_CODE_MASK ; 
 int PCI_BIST_START ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct s2io_nic *sp, uint64_t *data)
{
	u8 bist = 0;
	int cnt = 0, ret = -1;

	FUNC1(sp->pdev, PCI_BIST, &bist);
	bist |= PCI_BIST_START;
	FUNC2(sp->pdev, PCI_BIST, bist);

	while (cnt < 20) {
		FUNC1(sp->pdev, PCI_BIST, &bist);
		if (!(bist & PCI_BIST_START)) {
			*data = (bist & PCI_BIST_CODE_MASK);
			ret = 0;
			break;
		}
		FUNC0(100);
		cnt++;
	}

	return ret;
}