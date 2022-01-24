#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pci_dev {int dummy; } ;
struct cx88_core {int /*<<< orphan*/  name; } ;
struct TYPE_4__ {int disabled; } ;
struct TYPE_3__ {int /*<<< orphan*/  timeout; int /*<<< orphan*/  active; } ;
struct cx8802_dev {TYPE_2__ state; struct cx88_core* core; int /*<<< orphan*/  slock; TYPE_1__ mpegq; } ;
typedef  int /*<<< orphan*/  pm_message_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cx8802_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct cx88_core*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 struct cx8802_dev* FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*) ; 
 scalar_t__ FUNC9 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct pci_dev *pci_dev, pm_message_t state)
{
	struct cx8802_dev *dev = FUNC7(pci_dev);
	struct cx88_core *core = dev->core;

	/* stop mpeg dma */
	FUNC11(&dev->slock);
	if (!FUNC4(&dev->mpegq.active)) {
		FUNC3( 2, "suspend\n" );
		FUNC10("%s: suspend mpeg\n", core->name);
		FUNC0(dev);
		FUNC2(&dev->mpegq.timeout);
	}
	FUNC12(&dev->slock);

	/* FIXME -- shutdown device */
	FUNC1(dev->core);

	FUNC8(pci_dev);
	if (0 != FUNC9(pci_dev, FUNC5(pci_dev, state))) {
		FUNC6(pci_dev);
		dev->state.disabled = 1;
	}
	return 0;
}