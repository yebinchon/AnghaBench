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
struct scsi_cmnd {scalar_t__ sc_data_direction; } ;

/* Variables and functions */
 scalar_t__ DMA_TO_DEVICE ; 
 scalar_t__ FUNC0 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_cmnd*) ; 
 int FUNC2 (struct scsi_cmnd*,unsigned char*,int) ; 

__attribute__((used)) static int FUNC3(struct scsi_cmnd *scp, unsigned char *arr,
			       int arr_len)
{
	if (!FUNC1(scp))
		return 0;
	if (!(FUNC0(scp) || scp->sc_data_direction == DMA_TO_DEVICE))
		return -1;

	return FUNC2(scp, arr, arr_len);
}