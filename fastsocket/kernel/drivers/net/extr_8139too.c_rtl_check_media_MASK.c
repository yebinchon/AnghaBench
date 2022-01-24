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
struct rtl8139_private {scalar_t__* phys; int /*<<< orphan*/  mii; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 struct rtl8139_private* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl8139_private*) ; 

__attribute__((used)) static void FUNC3 (struct net_device *dev, unsigned int init_media)
{
	struct rtl8139_private *tp = FUNC1(dev);

	if (tp->phys[0] >= 0) {
		FUNC0(&tp->mii, FUNC2(tp), init_media);
	}
}