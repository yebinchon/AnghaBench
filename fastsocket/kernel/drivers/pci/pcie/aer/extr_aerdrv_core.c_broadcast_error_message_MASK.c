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
struct pci_dev {int hdr_type; int error_state; int /*<<< orphan*/  bus; int /*<<< orphan*/  subordinate; int /*<<< orphan*/  dev; } ;
struct aer_broadcast_data {int state; int /*<<< orphan*/  result; } ;
typedef  int /*<<< orphan*/  pci_ers_result_t ;
typedef  enum pci_channel_state { ____Placeholder_pci_channel_state } pci_channel_state ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_DEBUG ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_CAN_RECOVER ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_RECOVERED ; 
 int PCI_HEADER_TYPE_BRIDGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char*) ; 
 int pci_channel_io_normal ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int (*) (struct pci_dev*,void*),struct aer_broadcast_data*) ; 
 int FUNC3 (struct pci_dev*,void*) ; 
 int FUNC4 (struct pci_dev*,void*) ; 

__attribute__((used)) static pci_ers_result_t FUNC5(struct pci_dev *dev,
	enum pci_channel_state state,
	char *error_mesg,
	int (*cb)(struct pci_dev *, void *))
{
	struct aer_broadcast_data result_data;

	FUNC0(KERN_DEBUG, &dev->dev, "broadcast %s message\n", error_mesg);
	result_data.state = state;
	if (cb == report_error_detected)
		result_data.result = PCI_ERS_RESULT_CAN_RECOVER;
	else
		result_data.result = PCI_ERS_RESULT_RECOVERED;

	if (dev->hdr_type & PCI_HEADER_TYPE_BRIDGE) {
		/*
		 * If the error is reported by a bridge, we think this error
		 * is related to the downstream link of the bridge, so we
		 * do error recovery on all subordinates of the bridge instead
		 * of the bridge and clear the error status of the bridge.
		 */
		if (cb == report_error_detected)
			dev->error_state = state;
		FUNC2(dev->subordinate, cb, &result_data);
		if (cb == report_resume) {
			FUNC1(dev);
			dev->error_state = pci_channel_io_normal;
		}
	} else {
		/*
		 * If the error is reported by an end point, we think this
		 * error is related to the upstream link of the end point.
		 */
		FUNC2(dev->bus, cb, &result_data);
	}

	return result_data.result;
}