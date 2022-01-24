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
struct isci_remote_device {int dummy; } ;
struct isci_port {int dummy; } ;
typedef  enum sci_status { ____Placeholder_sci_status } sci_status ;

/* Variables and functions */
 int SCI_SUCCESS ; 
 int FUNC0 (struct isci_port*,struct isci_remote_device*,struct isci_request*) ; 
 int /*<<< orphan*/  FUNC1 (struct isci_remote_device*) ; 
 int FUNC2 (struct isci_request*) ; 

__attribute__((used)) static enum sci_status FUNC3(struct isci_port *iport,
					  struct isci_remote_device *idev,
					  struct isci_request *ireq)
{
	enum sci_status status;

	status = FUNC2(ireq);
	if (status != SCI_SUCCESS)
		return status;

	status = FUNC0(iport, idev, ireq);
	if (status != SCI_SUCCESS)
		return status;

	FUNC1(idev);
	return status;
}