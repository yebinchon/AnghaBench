#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct if_usb_card {int /*<<< orphan*/  fw_wq; TYPE_1__* priv; int /*<<< orphan*/  fwdnldover; } ;
struct TYPE_2__ {int surpriseremoved; } ;

/* Variables and functions */
 int /*<<< orphan*/  LBTF_DEB_USB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(unsigned long priv)
{
	struct if_usb_card *cardp = (void *)priv;

	FUNC0(LBTF_DEB_USB);
	if (!cardp->fwdnldover) {
		/* Download timed out */
		cardp->priv->surpriseremoved = 1;
		FUNC3("Download timed out\n");
	} else {
		FUNC2("Download complete, no event. Assuming success\n");
	}
	FUNC4(&cardp->fw_wq);
	FUNC1(LBTF_DEB_USB);
}