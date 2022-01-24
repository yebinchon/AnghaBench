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
typedef  int /*<<< orphan*/  u32 ;
struct timeval {int dummy; } ;
typedef  int s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct timeval*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct timeval*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct timeval,struct timeval) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

void FUNC5(struct timeval *waketime, u32 add_usec)
{
	struct timeval lasttime;
	s32 delta, newdelta;

	FUNC2(waketime, add_usec);

	FUNC0(&lasttime);
	delta = FUNC3(lasttime, *waketime);
	if (delta > 2500) {
		FUNC1((delta - 1500) / 1000);
		FUNC0(&lasttime);
		newdelta = FUNC3(lasttime, *waketime);
		delta = (newdelta > delta) ? 0 : newdelta;
	}
	if (delta > 0)
		FUNC4(delta);
}