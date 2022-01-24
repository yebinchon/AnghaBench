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
struct wf_sensor {int dummy; } ;
struct wf_sat_sensor {int index; int shift; int index2; struct wf_sat* sat; } ;
struct wf_sat {int* cache; int /*<<< orphan*/  mutex; scalar_t__ last_read; int /*<<< orphan*/ * i2c; } ;
typedef  int s32 ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ MAX_AGE ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC3 (struct wf_sat*) ; 
 struct wf_sat_sensor* FUNC4 (struct wf_sensor*) ; 

__attribute__((used)) static int FUNC5(struct wf_sensor *sr, s32 *value)
{
	struct wf_sat_sensor *sens = FUNC4(sr);
	struct wf_sat *sat = sens->sat;
	int i, err;
	s32 val;

	if (sat->i2c == NULL)
		return -ENODEV;

	FUNC0(&sat->mutex);
	if (FUNC2(jiffies, (sat->last_read + MAX_AGE))) {
		err = FUNC3(sat);
		if (err)
			goto fail;
	}

	i = sens->index * 2;
	val = ((sat->cache[i] << 8) + sat->cache[i+1]) << sens->shift;
	if (sens->index2 >= 0) {
		i = sens->index2 * 2;
		/* 4.12 * 8.8 -> 12.20; shift right 4 to get 16.16 */
		val = (val * ((sat->cache[i] << 8) + sat->cache[i+1])) >> 4;
	}

	*value = val;
	err = 0;

 fail:
	FUNC1(&sat->mutex);
	return err;
}