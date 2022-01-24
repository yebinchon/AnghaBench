#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  adapter_t ;
struct TYPE_8__ {TYPE_2__* device; } ;
struct TYPE_7__ {TYPE_1__* host; } ;
struct TYPE_6__ {scalar_t__ hostdata; } ;
typedef  TYPE_3__ Scsi_Cmnd ;

/* Variables and functions */
 int /*<<< orphan*/  SCB_ABORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(Scsi_Cmnd *cmd)
{
	adapter_t	*adapter;
	int		rval;

	adapter = (adapter_t *)cmd->device->host->hostdata;

	rval =  FUNC1(adapter, cmd, SCB_ABORT);

	/*
	 * This is required here to complete any completed requests
	 * to be communicated over to the mid layer.
	 */
	FUNC0(adapter);

	return rval;
}