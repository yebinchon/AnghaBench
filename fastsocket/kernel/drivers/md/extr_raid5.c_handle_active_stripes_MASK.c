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
struct stripe_head {int dummy; } ;
struct r5conf {int /*<<< orphan*/  device_lock; } ;

/* Variables and functions */
 int MAX_STRIPE_BATCH ; 
 struct stripe_head* FUNC0 (struct r5conf*) ; 
 int /*<<< orphan*/  FUNC1 (struct r5conf*,struct stripe_head*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct stripe_head*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct r5conf *conf)
{
	struct stripe_head *batch[MAX_STRIPE_BATCH], *sh;
	int i, batch_size = 0;

	while (batch_size < MAX_STRIPE_BATCH &&
			(sh = FUNC0(conf)) != NULL)
		batch[batch_size++] = sh;

	if (batch_size == 0)
		return batch_size;
	FUNC5(&conf->device_lock);

	for (i = 0; i < batch_size; i++)
		FUNC3(batch[i]);

	FUNC2();

	FUNC4(&conf->device_lock);
	for (i = 0; i < batch_size; i++)
		FUNC1(conf, batch[i]);
	return batch_size;
}