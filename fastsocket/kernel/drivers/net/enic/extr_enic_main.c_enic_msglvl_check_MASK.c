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
typedef  scalar_t__ u32 ;
struct enic {scalar_t__ msg_enable; int /*<<< orphan*/  netdev; int /*<<< orphan*/  vdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct enic *enic)
{
	u32 msg_enable = FUNC1(enic->vdev);

	if (msg_enable != enic->msg_enable) {
		FUNC0(enic->netdev, "msg lvl changed from 0x%x to 0x%x\n",
			enic->msg_enable, msg_enable);
		enic->msg_enable = msg_enable;
	}
}