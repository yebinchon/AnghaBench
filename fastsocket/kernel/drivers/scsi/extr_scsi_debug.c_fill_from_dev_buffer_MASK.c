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
struct TYPE_2__ {int /*<<< orphan*/  nents; int /*<<< orphan*/  sgl; } ;
struct scsi_data_buffer {scalar_t__ resid; TYPE_1__ table; int /*<<< orphan*/  length; } ;
struct scsi_cmnd {scalar_t__ sc_data_direction; } ;

/* Variables and functions */
 int DID_ERROR ; 
 scalar_t__ DMA_FROM_DEVICE ; 
 scalar_t__ FUNC0 (struct scsi_cmnd*) ; 
 scalar_t__ FUNC1 (struct scsi_cmnd*) ; 
 struct scsi_data_buffer* FUNC2 (struct scsi_cmnd*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,int) ; 

__attribute__((used)) static int FUNC4(struct scsi_cmnd *scp, unsigned char *arr,
				int arr_len)
{
	int act_len;
	struct scsi_data_buffer *sdb = FUNC2(scp);

	if (!sdb->length)
		return 0;
	if (!(FUNC0(scp) || scp->sc_data_direction == DMA_FROM_DEVICE))
		return (DID_ERROR << 16);

	act_len = FUNC3(sdb->table.sgl, sdb->table.nents,
				      arr, arr_len);
	if (sdb->resid)
		sdb->resid -= act_len;
	else
		sdb->resid = FUNC1(scp) - act_len;

	return 0;
}