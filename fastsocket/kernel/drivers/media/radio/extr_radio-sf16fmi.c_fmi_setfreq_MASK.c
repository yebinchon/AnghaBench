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
struct fmi {unsigned long curfreq; scalar_t__ curvol; int /*<<< orphan*/  lock; int /*<<< orphan*/  io; } ;

/* Variables and functions */
 int FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct fmi*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC6(struct fmi *fmi, unsigned long freq)
{
	FUNC3(&fmi->lock);
	fmi->curfreq = freq;

	FUNC5(16, FUNC0(freq), fmi->io);
	FUNC5(8, 0xC0, fmi->io);
	FUNC2(143);		/* was schedule_timeout(HZ/7) */
	FUNC4(&fmi->lock);
	if (fmi->curvol)
		FUNC1(fmi);
	return 0;
}