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
struct rtrack {int curvol; int /*<<< orphan*/  lock; scalar_t__ muted; int /*<<< orphan*/  io; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rtrack*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtrack*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct rtrack *rt, int vol)
{
	int i;

	FUNC0(&rt->lock);

	if (vol == rt->curvol) {	/* requested volume = current */
		if (rt->muted) {	/* user is unmuting the card  */
			rt->muted = 0;
			FUNC2(0xd8, rt->io);	/* enable card */
		}
		FUNC1(&rt->lock);
		return 0;
	}

	if (vol == 0) {			/* volume = 0 means mute the card */
		FUNC2(0x48, rt->io);	/* volume down but still "on"	*/
		FUNC5(2000000);	/* make sure it's totally down	*/
		FUNC2(0xd0, rt->io);	/* volume steady, off		*/
		rt->curvol = 0;		/* track the volume state!	*/
		FUNC1(&rt->lock);
		return 0;
	}

	rt->muted = 0;
	if (vol > rt->curvol)
		for (i = rt->curvol; i < vol; i++)
			FUNC4(rt);
	else
		for (i = rt->curvol; i > vol; i--)
			FUNC3(rt);

	rt->curvol = vol;
	FUNC1(&rt->lock);
	return 0;
}