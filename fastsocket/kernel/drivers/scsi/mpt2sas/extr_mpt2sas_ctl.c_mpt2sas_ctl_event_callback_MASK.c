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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct MPT2SAS_ADAPTER {int dummy; } ;
typedef  int /*<<< orphan*/  Mpi2EventNotificationReply_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (struct MPT2SAS_ADAPTER*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct MPT2SAS_ADAPTER*,int /*<<< orphan*/ *) ; 

u8
FUNC2(struct MPT2SAS_ADAPTER *ioc, u8 msix_index,
	u32 reply)
{
	Mpi2EventNotificationReply_t *mpi_reply;

	mpi_reply = FUNC0(ioc, reply);
	FUNC1(ioc, mpi_reply);
	return 1;
}