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
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 
 scalar_t__ txx9_gbus_clock ; 

struct clk *FUNC2(struct device *dev, const char *id)
{
	if (!FUNC1(id, "spi-baseclk"))
		return (struct clk *)((unsigned long)txx9_gbus_clock / 2 / 2);
	if (!FUNC1(id, "imbus_clk"))
		return (struct clk *)((unsigned long)txx9_gbus_clock / 2);
	return FUNC0(-ENOENT);
}