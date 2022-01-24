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
struct scsi_cmnd {int /*<<< orphan*/  (* scsi_done ) (struct scsi_cmnd*) ;} ;
struct ibmvfc_event {scalar_t__ eh_comp; struct scsi_cmnd* cmnd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct ibmvfc_event*) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_cmnd*) ; 

__attribute__((used)) static void FUNC4(struct ibmvfc_event *evt)
{
	struct scsi_cmnd *cmnd = evt->cmnd;

	if (cmnd) {
		FUNC2(cmnd);
		cmnd->scsi_done(cmnd);
	}

	if (evt->eh_comp)
		FUNC0(evt->eh_comp);

	FUNC1(evt);
}