#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* (* v2_dumb_mmap ) (char*,int,unsigned int,unsigned int) ;} ;
struct TYPE_4__ {TYPE_1__ pv_v2devops; } ;

/* Variables and functions */
 int /*<<< orphan*/  prom_lock ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_2__* romvec ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 char* FUNC3 (char*,int,unsigned int,unsigned int) ; 

char *
FUNC4(char *vhint, int ios, unsigned int paddr, unsigned int num_bytes)
{
	unsigned long flags;
	char *ret;

	FUNC1(&prom_lock, flags);
	if((num_bytes == 0) || (paddr == 0)) ret = (char *) 0x0;
	else
	ret = (*(romvec->pv_v2devops.v2_dumb_mmap))(vhint, ios, paddr,
						    num_bytes);
	FUNC0();
	FUNC2(&prom_lock, flags);
	return ret;
}