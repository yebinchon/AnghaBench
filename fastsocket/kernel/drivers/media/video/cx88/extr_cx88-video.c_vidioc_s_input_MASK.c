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
struct file {int dummy; } ;
struct cx88_core {int /*<<< orphan*/  lock; } ;
struct cx8800_fh {TYPE_1__* dev; } ;
struct TYPE_2__ {struct cx88_core* core; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct cx88_core*) ; 
 int /*<<< orphan*/  FUNC1 (struct cx88_core*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4 (struct file *file, void *priv, unsigned int i)
{
	struct cx88_core  *core = ((struct cx8800_fh *)priv)->dev->core;

	if (i >= 4)
		return -EINVAL;

	FUNC2(&core->lock);
	FUNC0(core);
	FUNC1(core,i);
	FUNC3(&core->lock);
	return 0;
}