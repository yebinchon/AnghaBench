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
typedef  scalar_t__ u32 ;
struct tg3 {int /*<<< orphan*/  lock; } ;
struct sockaddr {int /*<<< orphan*/  sa_data; } ;
struct net_device {int /*<<< orphan*/  addr_len; int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int /*<<< orphan*/  ENABLE_ASF ; 
 int /*<<< orphan*/  MAC_ADDR_0_HIGH ; 
 int /*<<< orphan*/  MAC_ADDR_0_LOW ; 
 int /*<<< orphan*/  MAC_ADDR_1_HIGH ; 
 int /*<<< orphan*/  MAC_ADDR_1_LOW ; 
 int /*<<< orphan*/  FUNC0 (struct tg3*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tg3* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct tg3*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct net_device *dev, void *p)
{
	struct tg3 *tp = FUNC3(dev);
	struct sockaddr *addr = p;
	int err = 0;
	bool skip_mac_1 = false;

	if (!FUNC1(addr->sa_data))
		return -EADDRNOTAVAIL;

	FUNC2(dev->dev_addr, addr->sa_data, dev->addr_len);

	if (!FUNC4(dev))
		return 0;

	if (FUNC7(tp, ENABLE_ASF)) {
		u32 addr0_high, addr0_low, addr1_high, addr1_low;

		addr0_high = FUNC8(MAC_ADDR_0_HIGH);
		addr0_low = FUNC8(MAC_ADDR_0_LOW);
		addr1_high = FUNC8(MAC_ADDR_1_HIGH);
		addr1_low = FUNC8(MAC_ADDR_1_LOW);

		/* Skip MAC addr 1 if ASF is using it. */
		if ((addr0_high != addr1_high || addr0_low != addr1_low) &&
		    !(addr1_high == 0 && addr1_low == 0))
			skip_mac_1 = true;
	}
	FUNC5(&tp->lock);
	FUNC0(tp, skip_mac_1);
	FUNC6(&tp->lock);

	return err;
}