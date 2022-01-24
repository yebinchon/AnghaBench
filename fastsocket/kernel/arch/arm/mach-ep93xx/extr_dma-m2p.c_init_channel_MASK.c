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
struct m2p_channel {int /*<<< orphan*/ * client; int /*<<< orphan*/  lock; int /*<<< orphan*/  clk; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct m2p_channel *ch)
{
	ch->clk = FUNC2(NULL, ch->name);
	if (FUNC0(ch->clk))
		return FUNC1(ch->clk);

	FUNC3(&ch->lock);
	ch->client = NULL;

	return 0;
}