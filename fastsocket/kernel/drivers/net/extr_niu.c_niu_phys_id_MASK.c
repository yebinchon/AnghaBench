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
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct niu {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int EAGAIN ; 
 scalar_t__ FUNC0 (int) ; 
 struct niu* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct niu*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct niu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct niu*) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev, u32 data)
{
	struct niu *np = FUNC1(dev);
	u64 orig_led_state;
	int i;

	if (!FUNC2(dev))
		return -EAGAIN;

	if (data == 0)
		data = 2;

	orig_led_state = FUNC5(np);
	for (i = 0; i < (data * 2); i++) {
		int on = ((i % 2) == 0);

		FUNC3(np, on);

		if (FUNC0(500))
			break;
	}
	FUNC4(np, orig_led_state);

	return 0;
}