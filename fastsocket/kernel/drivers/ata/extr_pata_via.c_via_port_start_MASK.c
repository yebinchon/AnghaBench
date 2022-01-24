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
struct via_port {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct ata_port {struct via_port* private_data; TYPE_1__* host; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct ata_port*) ; 
 struct via_port* FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct pci_dev* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct ata_port *ap)
{
	struct via_port *vp;
	struct pci_dev *pdev = FUNC2(ap->host->dev);

	int ret = FUNC0(ap);
	if (ret < 0)
		return ret;

	vp = FUNC1(&pdev->dev, sizeof(struct via_port), GFP_KERNEL);
	if (vp == NULL)
		return -ENOMEM;
	ap->private_data = vp;
	return 0;
}