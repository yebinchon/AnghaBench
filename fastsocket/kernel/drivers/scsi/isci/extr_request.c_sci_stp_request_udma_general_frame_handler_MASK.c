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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  rsp; } ;
struct isci_request {TYPE_1__ stp; struct isci_host* owning_controller; } ;
struct isci_host {int /*<<< orphan*/  uf_control; } ;
struct dev_to_host_fis {scalar_t__ fis_type; } ;
typedef  enum sci_status { ____Placeholder_sci_status } sci_status ;

/* Variables and functions */
 scalar_t__ FIS_REGD2H ; 
 int SCI_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct dev_to_host_fis*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct isci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void**) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void**) ; 

__attribute__((used)) static enum sci_status FUNC4(struct isci_request *ireq,
								       u32 frame_index)
{
	struct isci_host *ihost = ireq->owning_controller;
	struct dev_to_host_fis *frame_header;
	enum sci_status status;
	u32 *frame_buffer;

	status = FUNC3(&ihost->uf_control,
							       frame_index,
							       (void **)&frame_header);

	if ((status == SCI_SUCCESS) &&
	    (frame_header->fis_type == FIS_REGD2H)) {
		FUNC2(&ihost->uf_control,
							      frame_index,
							      (void **)&frame_buffer);

		FUNC0(&ireq->stp.rsp,
						       frame_header,
						       frame_buffer);
	}

	FUNC1(ihost, frame_index);

	return status;
}