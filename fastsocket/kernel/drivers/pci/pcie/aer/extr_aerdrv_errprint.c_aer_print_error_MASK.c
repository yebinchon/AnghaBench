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
struct pci_dev {int devfn; int /*<<< orphan*/  dev; int /*<<< orphan*/  device; int /*<<< orphan*/  vendor; TYPE_1__* bus; } ;
struct aer_err_info {int status; size_t severity; int mask; int id; int error_dev_num; int /*<<< orphan*/  tlp; scalar_t__ tlp_header_valid; } ;
struct TYPE_2__ {int number; } ;

/* Variables and functions */
 int FUNC0 (size_t,int) ; 
 int FUNC1 (size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,struct aer_err_info*) ; 
 int /*<<< orphan*/ * aer_agent_string ; 
 int /*<<< orphan*/ * aer_error_layer ; 
 int /*<<< orphan*/ * aer_error_severity_string ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,size_t) ; 

void FUNC6(struct pci_dev *dev, struct aer_err_info *info)
{
	int id = ((dev->bus->number << 8) | dev->devfn);

	if (info->status == 0) {
		FUNC3(&dev->dev,
			"PCIe Bus Error: severity=%s, type=Unaccessible, "
			"id=%04x(Unregistered Agent ID)\n",
			aer_error_severity_string[info->severity], id);
	} else {
		int layer, agent;

		layer = FUNC1(info->severity, info->status);
		agent = FUNC0(info->severity, info->status);

		FUNC3(&dev->dev,
			"PCIe Bus Error: severity=%s, type=%s, id=%04x(%s)\n",
			aer_error_severity_string[info->severity],
			aer_error_layer[layer], id, aer_agent_string[agent]);

		FUNC3(&dev->dev,
			"  device [%04x:%04x] error status/mask=%08x/%08x\n",
			dev->vendor, dev->device,
			info->status, info->mask);

		FUNC2(dev, info);

		if (info->tlp_header_valid) {
			unsigned char *tlp = (unsigned char *) &info->tlp;
			FUNC3(&dev->dev, "  TLP Header:"
				" %02x%02x%02x%02x %02x%02x%02x%02x"
				" %02x%02x%02x%02x %02x%02x%02x%02x\n",
				*(tlp + 3), *(tlp + 2), *(tlp + 1), *tlp,
				*(tlp + 7), *(tlp + 6), *(tlp + 5), *(tlp + 4),
				*(tlp + 11), *(tlp + 10), *(tlp + 9),
				*(tlp + 8), *(tlp + 15), *(tlp + 14),
				*(tlp + 13), *(tlp + 12));
		}
	}

	if (info->id && info->error_dev_num > 1 && info->id == id)
		FUNC3(&dev->dev,
			   "  Error of this Agent(%04x) is reported first\n",
			id);
	FUNC5(FUNC4(&dev->dev), (info->status & ~info->mask),
			info->severity);
}