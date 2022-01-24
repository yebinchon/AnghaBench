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
struct spu {int /*<<< orphan*/  number; } ;
struct notifier_block {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  cache_lock ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct spu*,unsigned long) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct notifier_block *self, unsigned long val,
				void *data)
{
	int retval;
	unsigned long flags;
	struct spu *the_spu = data;

	FUNC0("SPU event notification arrived\n");
	if (!val) {
		FUNC3(&cache_lock, flags);
		retval = FUNC2(the_spu->number);
		FUNC4(&cache_lock, flags);
	} else {
		retval = FUNC1(the_spu, val);
	}
	return retval;
}