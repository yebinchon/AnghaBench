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
struct srmcons_private {int /*<<< orphan*/  timer; int /*<<< orphan*/  lock; int /*<<< orphan*/ * tty; } ;
typedef  int /*<<< orphan*/  DEFINE_SPINLOCK ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct srmcons_private* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int
FUNC5(struct srmcons_private **ps)
{
	static struct srmcons_private *srmconsp = NULL;
	static DEFINE_SPINLOCK(srmconsp_lock);
	unsigned long flags;
	int retval = 0;

	if (srmconsp == NULL) {
		srmconsp = FUNC1(sizeof(*srmconsp), GFP_KERNEL);
		FUNC3(&srmconsp_lock, flags);

		if (srmconsp == NULL)
			retval = -ENOMEM;
		else {
			srmconsp->tty = NULL;
			FUNC2(&srmconsp->lock);
			FUNC0(&srmconsp->timer);
		}

		FUNC4(&srmconsp_lock, flags);
	}

	*ps = srmconsp;
	return retval;
}