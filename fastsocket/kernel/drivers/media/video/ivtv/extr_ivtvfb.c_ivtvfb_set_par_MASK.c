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
struct ivtv {int dummy; } ;
struct fb_info {int /*<<< orphan*/  fix; int /*<<< orphan*/  var; scalar_t__ par; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ivtv*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ivtv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct fb_info*) ; 
 int FUNC4 (struct ivtv*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct fb_info *info)
{
	int rc = 0;
	struct ivtv *itv = (struct ivtv *) info->par;

	FUNC0("ivtvfb_set_par\n");

	rc = FUNC4(itv, &info->var);
	FUNC3(&info->var, info);
	FUNC2(itv, &info->fix);
	FUNC1(itv, "ivtvfb_set_par");
	return rc;
}