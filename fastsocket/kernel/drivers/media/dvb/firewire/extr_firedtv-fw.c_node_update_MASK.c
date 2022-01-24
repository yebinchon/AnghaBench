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
struct fw_unit {int /*<<< orphan*/  device; } ;
struct firedtv {scalar_t__ isochannel; int /*<<< orphan*/  subunit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct firedtv*,int /*<<< orphan*/ ,scalar_t__) ; 
 struct firedtv* FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct fw_unit *unit)
{
	struct firedtv *fdtv = FUNC1(&unit->device);

	if (fdtv->isochannel >= 0)
		FUNC0(fdtv, fdtv->subunit,
					    fdtv->isochannel);
}