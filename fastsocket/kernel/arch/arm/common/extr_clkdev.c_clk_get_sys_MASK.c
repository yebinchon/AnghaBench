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
struct clk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 struct clk* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct clk*) ; 
 struct clk* FUNC2 (char const*,char const*) ; 
 int /*<<< orphan*/  clocks_mutex ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

struct clk *FUNC5(const char *dev_id, const char *con_id)
{
	struct clk *clk;

	FUNC3(&clocks_mutex);
	clk = FUNC2(dev_id, con_id);
	if (clk && !FUNC1(clk))
		clk = NULL;
	FUNC4(&clocks_mutex);

	return clk ? clk : FUNC0(-ENOENT);
}