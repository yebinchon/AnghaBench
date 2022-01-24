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
struct TYPE_2__ {int /*<<< orphan*/  whiteness; int /*<<< orphan*/  brightness; int /*<<< orphan*/  contrast; int /*<<< orphan*/  colour; int /*<<< orphan*/  hue; } ;
struct uvd {TYPE_1__ vpic; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct uvd*) ; 
 int /*<<< orphan*/  FUNC2 (struct uvd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct uvd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct uvd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct uvd*) ; 

__attribute__((used)) static int FUNC6(struct uvd *uvd)
{
	int ret;

	FUNC0(ret, FUNC3(uvd, uvd->vpic.hue,
				uvd->vpic.colour, uvd->vpic.contrast));
	FUNC0(ret, FUNC2(uvd, uvd->vpic.brightness));
	FUNC0(ret, FUNC4(uvd, uvd->vpic.whiteness));
	FUNC0(ret, FUNC5(uvd));
	FUNC0(ret, FUNC1(uvd));
	return 0;
}