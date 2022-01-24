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

/* Variables and functions */
 scalar_t__ bfad_im_scsi_transport_template ; 
 scalar_t__ bfad_im_scsi_vport_transport_template ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 

void
FUNC1(void)
{
	if (bfad_im_scsi_transport_template)
		FUNC0(bfad_im_scsi_transport_template);

	if (bfad_im_scsi_vport_transport_template)
		FUNC0(bfad_im_scsi_vport_transport_template);
}