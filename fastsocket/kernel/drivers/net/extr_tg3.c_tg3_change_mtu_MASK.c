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
struct tg3 {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ ASIC_REV_57766 ; 
 int EINVAL ; 
 int /*<<< orphan*/  RESET_KIND_SHUTDOWN ; 
 int FUNC0 (struct tg3*) ; 
 int TG3_MIN_MTU ; 
 struct tg3* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct tg3*) ; 
 int /*<<< orphan*/  FUNC4 (struct tg3*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct tg3*) ; 
 int /*<<< orphan*/  FUNC6 (struct tg3*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct tg3*) ; 
 int /*<<< orphan*/  FUNC8 (struct tg3*) ; 
 int /*<<< orphan*/  FUNC9 (struct tg3*) ; 
 int /*<<< orphan*/  FUNC10 (struct tg3*) ; 
 int FUNC11 (struct tg3*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*,struct tg3*,int) ; 

__attribute__((used)) static int FUNC13(struct net_device *dev, int new_mtu)
{
	struct tg3 *tp = FUNC1(dev);
	int err;
	bool reset_phy = false;

	if (new_mtu < TG3_MIN_MTU || new_mtu > FUNC0(tp))
		return -EINVAL;

	if (!FUNC2(dev)) {
		/* We'll just catch it later when the
		 * device is up'd.
		 */
		FUNC12(dev, tp, new_mtu);
		return 0;
	}

	FUNC10(tp);

	FUNC8(tp);

	FUNC4(tp, 1);

	FUNC6(tp, RESET_KIND_SHUTDOWN, 1);

	FUNC12(dev, tp, new_mtu);

	/* Reset PHY, otherwise the read DMA engine will be in a mode that
	 * breaks all requests to 256 bytes.
	 */
	if (FUNC3(tp) == ASIC_REV_57766)
		reset_phy = true;

	err = FUNC11(tp, reset_phy);

	if (!err)
		FUNC7(tp);

	FUNC5(tp);

	if (!err)
		FUNC9(tp);

	return err;
}