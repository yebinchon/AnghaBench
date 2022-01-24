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
struct device {int dummy; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 struct clk* FUNC0 (int /*<<< orphan*/ ) ; 
 struct clk clk_gpio27 ; 
 char* FUNC1 (struct device*) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 

struct clk *FUNC3(struct device *dev, const char *id)
{
	const char *devname = FUNC1(dev);

	return FUNC2(devname, "sa1111.0") ? FUNC0(-ENOENT) : &clk_gpio27;
}