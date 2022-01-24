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
 struct clk* FUNC1 (char const*,char const*) ; 
 int /*<<< orphan*/  clock_list_sem ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

struct clk *FUNC4(const char *dev_id, const char *con_id)
{
	struct clk *clk;

	FUNC2(&clock_list_sem);
	clk = FUNC1(dev_id, con_id);
	FUNC3(&clock_list_sem);

	return clk ? clk : FUNC0(-ENOENT);
}