#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct b43_wldev {TYPE_1__* key; } ;
struct TYPE_2__ {int /*<<< orphan*/ * keyconf; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  B43_SEC_ALGO_NONE ; 
 int /*<<< orphan*/  B43_SEC_KEYSIZE ; 
 scalar_t__ FUNC1 (int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct b43_wldev *dev, int index)
{
	if (FUNC1((index < 0) || (index >= FUNC0(dev->key))))
		return -EINVAL;
	FUNC3(dev, index, B43_SEC_ALGO_NONE,
		     NULL, B43_SEC_KEYSIZE, NULL);
	if ((index <= 3) && !FUNC2(dev)) {
		FUNC3(dev, index + 4, B43_SEC_ALGO_NONE,
			     NULL, B43_SEC_KEYSIZE, NULL);
	}
	dev->key[index].keyconf = NULL;

	return 0;
}