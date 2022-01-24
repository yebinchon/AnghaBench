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
struct net_device {int dummy; } ;
struct bnx2 {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bnx2*) ; 
 scalar_t__ BNX2_CHIP_5709 ; 
 int FUNC1 (struct net_device*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct net_device*,int /*<<< orphan*/ ) ; 
 struct bnx2* FUNC3 (struct net_device*) ; 

__attribute__((used)) static int
FUNC4(struct net_device *dev, u32 data)
{
	struct bnx2 *bp = FUNC3(dev);

	if (FUNC0(bp) == BNX2_CHIP_5709)
		return (FUNC2(dev, data));
	else
		return (FUNC1(dev, data));
}