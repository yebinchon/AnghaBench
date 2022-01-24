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
typedef  int /*<<< orphan*/  u8 ;
struct ipath_devdata {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  VERBOSE ; 
 int /*<<< orphan*/  i2c_line_high ; 
 int /*<<< orphan*/  i2c_line_low ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ipath_devdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ipath_devdata*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ipath_devdata*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct ipath_devdata *dd, u8 offset_dir)
{
	int res;

	/* issue start sequence */
	FUNC2(dd, i2c_line_high);
	FUNC1(dd, i2c_line_high);
	FUNC2(dd, i2c_line_low);
	FUNC1(dd, i2c_line_low);

	/* issue length and direction byte */
	res = FUNC3(dd, offset_dir);

	if (res)
		FUNC0(VERBOSE, "No ack to complete start\n");

	return res;
}