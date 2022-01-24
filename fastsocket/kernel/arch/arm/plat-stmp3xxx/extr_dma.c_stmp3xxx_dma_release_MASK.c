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
struct stmp3xxx_dma_user {int /*<<< orphan*/  inuse; int /*<<< orphan*/ * pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EBUSY ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct stmp3xxx_dma_user* channels ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(int ch)
{
	struct stmp3xxx_dma_user *user = channels + ch;
	int err = 0;

	if (!FUNC2(ch)) {
		err = -ENODEV;
		goto out;
	}
	if (!FUNC1(ch)) {
		err = -EBUSY;
		goto out;
	}
	FUNC0(user->pool == NULL);
	FUNC3(user->pool);
	user->inuse--;
out:
	return err;
}