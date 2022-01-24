#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int (* v2_dev_open ) (char*) ;} ;
struct TYPE_4__ {int (* v0_devopen ) (char*) ;} ;
struct TYPE_6__ {TYPE_2__ pv_v2devops; TYPE_1__ pv_v0devops; } ;

/* Variables and functions */
#define  PROM_V0 130 
#define  PROM_V2 129 
#define  PROM_V3 128 
 int /*<<< orphan*/  prom_lock ; 
 int prom_vers ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_3__* romvec ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC3 (char*) ; 
 int FUNC4 (char*) ; 

int
FUNC5(char *dstr)
{
	int handle;
	unsigned long flags;
	FUNC1(&prom_lock, flags);
	switch(prom_vers) {
	case PROM_V0:
		handle = (*(romvec->pv_v0devops.v0_devopen))(dstr);
		if(handle == 0) handle = -1;
		break;
	case PROM_V2:
	case PROM_V3:
		handle = (*(romvec->pv_v2devops.v2_dev_open))(dstr);
		break;
	default:
		handle = -1;
		break;
	};
	FUNC0();
	FUNC2(&prom_lock, flags);

	return handle;
}