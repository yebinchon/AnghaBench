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
struct entropy_store {int entropy_count; int /*<<< orphan*/  lock; TYPE_1__* poolinfo; int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int POOLBITS; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  POLL_IN ; 
 int /*<<< orphan*/  SIGIO ; 
 int /*<<< orphan*/  fasync ; 
 struct entropy_store input_pool ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  random_read_wait ; 
 int random_read_wakeup_thresh ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct entropy_store *r, int nbits)
{
	unsigned long flags;
	int entropy_count;

	if (!nbits)
		return;

	FUNC2(&r->lock, flags);

	FUNC0("added %d entropy credits to %s\n", nbits, r->name);
	entropy_count = r->entropy_count;
	entropy_count += nbits;
	if (entropy_count < 0) {
		FUNC0("negative entropy/overflow\n");
		entropy_count = 0;
	} else if (entropy_count > r->poolinfo->POOLBITS)
		entropy_count = r->poolinfo->POOLBITS;
	r->entropy_count = entropy_count;

	/* should we wake readers? */
	if (r == &input_pool && entropy_count >= random_read_wakeup_thresh) {
		FUNC4(&random_read_wait);
		FUNC1(&fasync, SIGIO, POLL_IN);
	}
	FUNC3(&r->lock, flags);
}