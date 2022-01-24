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
struct rtrack {unsigned long curfreq; scalar_t__ curvol; int /*<<< orphan*/  lock; int /*<<< orphan*/  io; scalar_t__ muted; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rtrack*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtrack*) ; 

__attribute__((used)) static int FUNC5(struct rtrack *rt, unsigned long freq)
{
	int i;

	FUNC0(&rt->lock);			/* Stop other ops interfering */

	rt->curfreq = freq;

	/* now uses VIDEO_TUNER_LOW for fine tuning */

	freq += 171200;			/* Add 10.7 MHz IF 		*/
	freq /= 800;			/* Convert to 50 kHz units	*/

	FUNC3(rt);		/*  0: LSB of frequency		*/

	for (i = 0; i < 13; i++)	/*   : frequency bits (1-13)	*/
		if (freq & (1 << i))
			FUNC4(rt);
		else
			FUNC3(rt);

	FUNC3(rt);		/* 14: test bit - always 0    */
	FUNC3(rt);		/* 15: test bit - always 0    */

	FUNC3(rt);		/* 16: band data 0 - always 0 */
	FUNC3(rt);		/* 17: band data 1 - always 0 */
	FUNC3(rt);		/* 18: band data 2 - always 0 */
	FUNC3(rt);		/* 19: time base - always 0   */

	FUNC3(rt);		/* 20: spacing (0 = 25 kHz)   */
	FUNC4(rt);		/* 21: spacing (1 = 25 kHz)   */
	FUNC3(rt);		/* 22: spacing (0 = 25 kHz)   */
	FUNC4(rt);		/* 23: AM/FM (FM = 1, always) */

	if (rt->curvol == 0 || rt->muted)
		FUNC2(0xd0, rt->io);	/* volume steady + sigstr */
	else
		FUNC2(0xd8, rt->io);	/* volume steady + sigstr + on */

	FUNC1(&rt->lock);

	return 0;
}