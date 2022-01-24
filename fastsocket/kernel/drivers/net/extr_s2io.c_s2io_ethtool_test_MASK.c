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
typedef  int uint64_t ;
struct s2io_nic {int /*<<< orphan*/  dev; } ;
struct net_device {int /*<<< orphan*/  name; } ;
struct ethtool_test {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_DBG ; 
 int /*<<< orphan*/  ETH_TEST_FL_FAILED ; 
 int /*<<< orphan*/  ETH_TEST_FL_OFFLINE ; 
 struct s2io_nic* FUNC1 (struct net_device*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct s2io_nic*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct s2io_nic*,int*) ; 
 scalar_t__ FUNC6 (struct s2io_nic*,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct s2io_nic*,int*) ; 
 int /*<<< orphan*/  FUNC9 (struct s2io_nic*) ; 
 scalar_t__ FUNC10 (struct s2io_nic*,int*) ; 

__attribute__((used)) static void FUNC11(struct net_device *dev,
			      struct ethtool_test *ethtest,
			      uint64_t *data)
{
	struct s2io_nic *sp = FUNC1(dev);
	int orig_state = FUNC2(sp->dev);

	if (ethtest->flags == ETH_TEST_FL_OFFLINE) {
		/* Offline Tests. */
		if (orig_state)
			FUNC4(sp->dev);

		if (FUNC8(sp, &data[0]))
			ethtest->flags |= ETH_TEST_FL_FAILED;

		FUNC9(sp);

		if (FUNC10(sp, &data[3]))
			ethtest->flags |= ETH_TEST_FL_FAILED;

		FUNC9(sp);

		if (FUNC5(sp, &data[1]))
			ethtest->flags |= ETH_TEST_FL_FAILED;

		if (FUNC3(sp, &data[4]))
			ethtest->flags |= ETH_TEST_FL_FAILED;

		if (orig_state)
			FUNC7(sp->dev);

		data[2] = 0;
	} else {
		/* Online Tests. */
		if (!orig_state) {
			FUNC0(ERR_DBG, "%s: is not up, cannot run test\n",
				  dev->name);
			data[0] = -1;
			data[1] = -1;
			data[2] = -1;
			data[3] = -1;
			data[4] = -1;
		}

		if (FUNC6(sp, &data[2]))
			ethtest->flags |= ETH_TEST_FL_FAILED;

		data[0] = 0;
		data[1] = 0;
		data[3] = 0;
		data[4] = 0;
	}
}