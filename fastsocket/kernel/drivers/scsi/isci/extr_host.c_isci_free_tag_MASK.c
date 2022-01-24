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
typedef  size_t u16 ;
struct isci_host {size_t* io_request_sequence; } ;
typedef  enum sci_status { ____Placeholder_sci_status } sci_status ;

/* Variables and functions */
 size_t FUNC0 (size_t) ; 
 size_t FUNC1 (size_t) ; 
 int SCI_FAILURE_INVALID_IO_TAG ; 
 int SCI_MAX_SEQ ; 
 int SCI_SUCCESS ; 
 scalar_t__ FUNC2 (struct isci_host*) ; 
 int /*<<< orphan*/  FUNC3 (struct isci_host*,size_t) ; 

enum sci_status FUNC4(struct isci_host *ihost, u16 io_tag)
{
	u16 tci = FUNC1(io_tag);
	u16 seq = FUNC0(io_tag);

	/* prevent tail from passing head */
	if (FUNC2(ihost) == 0)
		return SCI_FAILURE_INVALID_IO_TAG;

	if (seq == ihost->io_request_sequence[tci]) {
		ihost->io_request_sequence[tci] = (seq+1) & (SCI_MAX_SEQ-1);

		FUNC3(ihost, tci);

		return SCI_SUCCESS;
	}
	return SCI_FAILURE_INVALID_IO_TAG;
}