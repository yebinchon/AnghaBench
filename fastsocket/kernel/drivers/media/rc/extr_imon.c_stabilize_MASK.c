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
typedef  scalar_t__ u16 ;
struct timeval {int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct timeval*) ; 
 int FUNC2 (struct timeval*,struct timeval*) ; 

__attribute__((used)) static int FUNC3(int a, int b, u16 timeout, u16 threshold)
{
	struct timeval ct;
	static struct timeval prev_time = {0, 0};
	static struct timeval hit_time  = {0, 0};
	static int x, y, prev_result, hits;
	int result = 0;
	int msec, msec_hit;

	FUNC1(&ct);
	msec = FUNC2(&ct, &prev_time);
	msec_hit = FUNC2(&ct, &hit_time);

	if (msec > 100) {
		x = 0;
		y = 0;
		hits = 0;
	}

	x += a;
	y += b;

	prev_time = ct;

	if (FUNC0(x) > threshold || FUNC0(y) > threshold) {
		if (FUNC0(y) > FUNC0(x))
			result = (y > 0) ? 0x7F : 0x80;
		else
			result = (x > 0) ? 0x7F00 : 0x8000;

		x = 0;
		y = 0;

		if (result == prev_result) {
			hits++;

			if (hits > 3) {
				switch (result) {
				case 0x7F:
					y = 17 * threshold / 30;
					break;
				case 0x80:
					y -= 17 * threshold / 30;
					break;
				case 0x7F00:
					x = 17 * threshold / 30;
					break;
				case 0x8000:
					x -= 17 * threshold / 30;
					break;
				}
			}

			if (hits == 2 && msec_hit < timeout) {
				result = 0;
				hits = 1;
			}
		} else {
			prev_result = result;
			hits = 1;
			hit_time = ct;
		}
	}

	return result;
}