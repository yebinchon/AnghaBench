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
struct pvr2_ioread {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PVR2_TRACE_STRUCT ; 
 int /*<<< orphan*/  FUNC0 (struct pvr2_ioread*) ; 
 struct pvr2_ioread* FUNC1 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct pvr2_ioread*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,struct pvr2_ioread*) ; 

struct pvr2_ioread *FUNC4(void)
{
	struct pvr2_ioread *cp;
	cp = FUNC1(sizeof(*cp),GFP_KERNEL);
	if (!cp) return NULL;
	FUNC3(PVR2_TRACE_STRUCT,"pvr2_ioread_create id=%p",cp);
	if (FUNC2(cp) < 0) {
		FUNC0(cp);
		return NULL;
	}
	return cp;
}