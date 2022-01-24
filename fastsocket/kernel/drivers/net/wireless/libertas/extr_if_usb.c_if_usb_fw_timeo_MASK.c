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
struct if_usb_card {int surprise_removed; int /*<<< orphan*/  fw_wq; scalar_t__ fwdnldover; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(unsigned long priv)
{
	struct if_usb_card *cardp = (void *)priv;

	if (cardp->fwdnldover) {
		FUNC0("Download complete, no event. Assuming success\n");
	} else {
		FUNC1("Download timed out\n");
		cardp->surprise_removed = 1;
	}
	FUNC2(&cardp->fw_wq);
}