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
typedef  scalar_t__ u32 ;
struct omap_hwmod {scalar_t__ _sysc_cache; TYPE_1__* sysconfig; int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int /*<<< orphan*/  sysc_offs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct omap_hwmod*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(u32 v, struct omap_hwmod *oh)
{
	if (!oh->sysconfig) {
		FUNC0(!oh->sysconfig, "omap_hwmod: %s: cannot write "
		     "OCP_SYSCONFIG: not defined on hwmod\n", oh->name);
		return;
	}

	/* XXX ensure module interface clock is up */

	if (oh->_sysc_cache != v) {
		oh->_sysc_cache = v;
		FUNC1(v, oh, oh->sysconfig->sysc_offs);
	}
}