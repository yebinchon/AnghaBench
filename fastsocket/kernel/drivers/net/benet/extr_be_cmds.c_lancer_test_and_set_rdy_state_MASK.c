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
typedef  int u32 ;
struct be_adapter {scalar_t__ db; } ;

/* Variables and functions */
 int EAGAIN ; 
 scalar_t__ SLIPORT_CONTROL_OFFSET ; 
 int SLIPORT_STATUS_ERR_MASK ; 
 scalar_t__ SLIPORT_STATUS_OFFSET ; 
 int SLIPORT_STATUS_RN_MASK ; 
 int /*<<< orphan*/  SLI_PORT_CONTROL_IP_MASK ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC2 (struct be_adapter*) ; 
 int FUNC3 (struct be_adapter*) ; 

int FUNC4(struct be_adapter *adapter)
{
	int status;
	u32 sliport_status, err, reset_needed;
	bool resource_error;

	resource_error = FUNC2(adapter);
	if (resource_error)
		return -EAGAIN;

	status = FUNC3(adapter);
	if (!status) {
		sliport_status = FUNC0(adapter->db + SLIPORT_STATUS_OFFSET);
		err = sliport_status & SLIPORT_STATUS_ERR_MASK;
		reset_needed = sliport_status & SLIPORT_STATUS_RN_MASK;
		if (err && reset_needed) {
			FUNC1(SLI_PORT_CONTROL_IP_MASK,
				  adapter->db + SLIPORT_CONTROL_OFFSET);

			/* check adapter has corrected the error */
			status = FUNC3(adapter);
			sliport_status = FUNC0(adapter->db +
						  SLIPORT_STATUS_OFFSET);
			sliport_status &= (SLIPORT_STATUS_ERR_MASK |
						SLIPORT_STATUS_RN_MASK);
			if (status || sliport_status)
				status = -1;
		} else if (err || reset_needed) {
			status = -1;
		}
	}
	/* Stop error recovery if error is not recoverable.
	 * No resource error is temporary errors and will go away
	 * when PF provisions resources.
	 */
	resource_error = FUNC2(adapter);
	if (resource_error)
		status = -EAGAIN;

	return status;
}