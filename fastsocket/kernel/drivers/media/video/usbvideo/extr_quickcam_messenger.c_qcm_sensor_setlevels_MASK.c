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
struct uvd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct uvd*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct uvd*,int,int,int) ; 

__attribute__((used)) static int FUNC3(struct uvd *uvd, int brightness, int contrast,
					int hue, int colour)
{
	int ret;
	/* brightness is exposure, contrast is gain, colour is saturation */
	FUNC0(ret,
		FUNC1(uvd, brightness));
	FUNC0(ret, FUNC2(uvd, hue, colour, contrast));

	return 0;
}