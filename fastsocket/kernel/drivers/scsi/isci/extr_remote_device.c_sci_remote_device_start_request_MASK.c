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
struct isci_request {int dummy; } ;
struct isci_remote_device {int /*<<< orphan*/  started_request_count; int /*<<< orphan*/  kref; struct isci_port* owning_port; } ;
struct isci_port {int dummy; } ;
typedef  enum sci_status { ____Placeholder_sci_status } sci_status ;

/* Variables and functions */
 int SCI_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct isci_port*,struct isci_remote_device*,struct isci_request*) ; 

__attribute__((used)) static void FUNC2(struct isci_remote_device *idev,
						 struct isci_request *ireq,
						 enum sci_status status)
{
	struct isci_port *iport = idev->owning_port;

	/* cleanup requests that failed after starting on the port */
	if (status != SCI_SUCCESS)
		FUNC1(iport, idev, ireq);
	else {
		FUNC0(&idev->kref);
		idev->started_request_count++;
	}
}