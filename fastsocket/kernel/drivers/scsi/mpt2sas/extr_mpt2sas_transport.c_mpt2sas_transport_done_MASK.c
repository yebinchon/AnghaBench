#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  scalar_t__ u16 ;
struct TYPE_5__ {scalar_t__ smid; int /*<<< orphan*/  done; int /*<<< orphan*/  status; int /*<<< orphan*/  reply; } ;
struct MPT2SAS_ADAPTER {TYPE_1__ transport_cmds; } ;
struct TYPE_6__ {int MsgLength; } ;
typedef  TYPE_2__ MPI2DefaultReply_t ;

/* Variables and functions */
 int /*<<< orphan*/  MPT2_CMD_COMPLETE ; 
 int /*<<< orphan*/  MPT2_CMD_NOT_USED ; 
 int /*<<< orphan*/  MPT2_CMD_PENDING ; 
 int /*<<< orphan*/  MPT2_CMD_REPLY_VALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*,int) ; 
 TYPE_2__* FUNC2 (struct MPT2SAS_ADAPTER*,int /*<<< orphan*/ ) ; 

u8
FUNC3(struct MPT2SAS_ADAPTER *ioc, u16 smid, u8 msix_index,
    u32 reply)
{
	MPI2DefaultReply_t *mpi_reply;

	mpi_reply =  FUNC2(ioc, reply);
	if (ioc->transport_cmds.status == MPT2_CMD_NOT_USED)
		return 1;
	if (ioc->transport_cmds.smid != smid)
		return 1;
	ioc->transport_cmds.status |= MPT2_CMD_COMPLETE;
	if (mpi_reply) {
		FUNC1(ioc->transport_cmds.reply, mpi_reply,
		    mpi_reply->MsgLength*4);
		ioc->transport_cmds.status |= MPT2_CMD_REPLY_VALID;
	}
	ioc->transport_cmds.status &= ~MPT2_CMD_PENDING;
	FUNC0(&ioc->transport_cmds.done);
	return 1;
}