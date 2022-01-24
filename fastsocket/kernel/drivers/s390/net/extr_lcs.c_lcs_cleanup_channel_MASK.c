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
struct lcs_channel {int /*<<< orphan*/  irq_tasklet; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct lcs_channel*) ; 
 int /*<<< orphan*/  setup ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct lcs_channel *channel)
{
	FUNC0(3, setup, "cleanch");
	/* Kill write channel tasklets. */
	FUNC2(&channel->irq_tasklet);
	/* Free channel buffers. */
	FUNC1(channel);
}