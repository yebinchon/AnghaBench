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
typedef  int u32 ;
struct net_device {int flags; scalar_t__ mc_count; } ;
struct b44 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  B44_CAM_CTRL ; 
 scalar_t__ B44_MCAST_TABLE_SIZE ; 
 int /*<<< orphan*/  B44_RXCONFIG ; 
 int CAM_CTRL_ENABLE ; 
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 int RXCONFIG_ALLMULTI ; 
 int RXCONFIG_CAM_ABSENT ; 
 int RXCONFIG_PROMISC ; 
 int /*<<< orphan*/  FUNC0 (struct b44*,unsigned char*,int) ; 
 int FUNC1 (struct b44*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct b44*) ; 
 int FUNC3 (struct b44*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct b44*,int /*<<< orphan*/ ,int) ; 
 struct b44* FUNC5 (struct net_device*) ; 

__attribute__((used)) static void FUNC6(struct net_device *dev)
{
	struct b44 *bp = FUNC5(dev);
	u32 val;

	val = FUNC3(bp, B44_RXCONFIG);
	val &= ~(RXCONFIG_PROMISC | RXCONFIG_ALLMULTI);
	if ((dev->flags & IFF_PROMISC) || (val & RXCONFIG_CAM_ABSENT)) {
		val |= RXCONFIG_PROMISC;
		FUNC4(bp, B44_RXCONFIG, val);
	} else {
		unsigned char zero[6] = {0, 0, 0, 0, 0, 0};
		int i = 1;

		FUNC2(bp);

		if ((dev->flags & IFF_ALLMULTI) ||
		    (dev->mc_count > B44_MCAST_TABLE_SIZE))
			val |= RXCONFIG_ALLMULTI;
		else
			i = FUNC1(bp, dev);

		for (; i < 64; i++)
			FUNC0(bp, zero, i);

		FUNC4(bp, B44_RXCONFIG, val);
        	val = FUNC3(bp, B44_CAM_CTRL);
	        FUNC4(bp, B44_CAM_CTRL, val | CAM_CTRL_ENABLE);
	}
}