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
struct net_device {int mtu; } ;
struct b44 {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  B44_FULL_RESET ; 
 int B44_MAX_MTU ; 
 int B44_MIN_MTU ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct b44*) ; 
 int /*<<< orphan*/  FUNC1 (struct b44*) ; 
 int /*<<< orphan*/  FUNC2 (struct b44*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct b44*) ; 
 struct b44* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct net_device *dev, int new_mtu)
{
	struct b44 *bp = FUNC4(dev);

	if (new_mtu < B44_MIN_MTU || new_mtu > B44_MAX_MTU)
		return -EINVAL;

	if (!FUNC5(dev)) {
		/* We'll just catch it later when the
		 * device is up'd.
		 */
		dev->mtu = new_mtu;
		return 0;
	}

	FUNC6(&bp->lock);
	FUNC1(bp);
	dev->mtu = new_mtu;
	FUNC3(bp);
	FUNC2(bp, B44_FULL_RESET);
	FUNC7(&bp->lock);

	FUNC0(bp);

	return 0;
}