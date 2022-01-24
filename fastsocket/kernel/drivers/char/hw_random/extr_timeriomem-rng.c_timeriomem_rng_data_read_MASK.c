#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct hwrng {unsigned long priv; } ;
typedef  unsigned long s32 ;
struct TYPE_5__ {int /*<<< orphan*/  completion; scalar_t__ present; int /*<<< orphan*/  address; } ;
struct TYPE_4__ {unsigned long expires; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_2__* timeriomem_rng_data ; 
 TYPE_1__ timeriomem_rng_timer ; 

__attribute__((used)) static int FUNC3(struct hwrng *rng, u32 *data)
{
	unsigned long cur;
	s32 delay;

	*data = FUNC2(timeriomem_rng_data->address);

	if (rng->priv != 0) {
		cur = jiffies;

		delay = cur - timeriomem_rng_timer.expires;
		delay = rng->priv - (delay % rng->priv);

		timeriomem_rng_timer.expires = cur + delay;
		timeriomem_rng_data->present = 0;

		FUNC1(&timeriomem_rng_data->completion);
		FUNC0(&timeriomem_rng_timer);
	}

	return 4;
}