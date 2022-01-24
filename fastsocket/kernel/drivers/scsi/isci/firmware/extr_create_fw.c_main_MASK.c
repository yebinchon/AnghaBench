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
struct isci_orom {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct isci_orom*) ; 
 struct isci_orom* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct isci_orom*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct isci_orom*) ; 
 int FUNC4 (struct isci_orom*) ; 

int FUNC5(void)
{
	int err;
	struct isci_orom *isci_orom;

	isci_orom = FUNC1(sizeof(struct isci_orom));
	FUNC2(isci_orom, 0, sizeof(struct isci_orom));

	FUNC3(isci_orom);

	err = FUNC4(isci_orom);
	if (err < 0) {
		FUNC0(isci_orom);
		return err;
	}

	FUNC0(isci_orom);
	return 0;
}