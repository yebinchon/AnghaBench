#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  stopper; } ;
struct cx8802_dev {TYPE_1__ mpegq; TYPE_2__* pci; } ;
struct TYPE_6__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct cx8802_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct cx8802_dev*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct cx8802_dev *dev)
{
	FUNC2( 2, "cx8802_fini_common\n" );
	FUNC1(dev);
	FUNC4(dev->pci);

	/* unregister stuff */
	FUNC3(dev->pci->irq, dev);
	FUNC5(dev->pci, NULL);

	/* free memory */
	FUNC0(dev->pci,&dev->mpegq.stopper);
}