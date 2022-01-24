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
struct pci_dev {int dummy; } ;
struct cx88_core {scalar_t__ i2c_rc; int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  lmmio; int /*<<< orphan*/  devlist; int /*<<< orphan*/  i2c_adap; scalar_t__ i2c_rtc; int /*<<< orphan*/  refcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cx88_devcount ; 
 int /*<<< orphan*/  FUNC1 (struct cx88_core*) ; 
 int /*<<< orphan*/  devlist ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cx88_core*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

void FUNC13(struct cx88_core *core, struct pci_dev *pci)
{
	FUNC11(FUNC10(pci,0),
			   FUNC9(pci,0));

	if (!FUNC0(&core->refcount))
		return;

	FUNC7(&devlist);
	FUNC1(core);
	if (0 == core->i2c_rc) {
		if (core->i2c_rtc)
			FUNC3(core->i2c_rtc);
		FUNC2(&core->i2c_adap);
	}
	FUNC6(&core->devlist);
	FUNC4(core->lmmio);
	cx88_devcount--;
	FUNC8(&devlist);
	FUNC12(&core->v4l2_dev);
	FUNC5(core);
}