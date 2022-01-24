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
typedef  int /*<<< orphan*/  u16 ;
struct rio_mport {int /*<<< orphan*/  id; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* dsend ) (struct rio_mport*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  rio_doorbell_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC2 (struct rio_mport*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(struct rio_mport *mport, u16 destid, u16 data)
{
	int res;
	unsigned long flags;

	FUNC0(&rio_doorbell_lock, flags);
	res = mport->ops->dsend(mport, mport->id, destid, data);
	FUNC1(&rio_doorbell_lock, flags);

	return res;
}