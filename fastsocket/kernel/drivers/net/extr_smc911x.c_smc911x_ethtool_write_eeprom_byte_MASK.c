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
typedef  int /*<<< orphan*/  u8 ;
struct smc911x_local {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct smc911x_local*,int /*<<< orphan*/ ) ; 
 struct smc911x_local* FUNC1 (struct net_device*) ; 
 int FUNC2 (struct net_device*) ; 

__attribute__((used)) static inline int FUNC3(struct net_device *dev,
													 u8 data)
{
	struct smc911x_local *lp = FUNC1(dev);
	int ret;

	if ((ret = FUNC2(dev))!=0)
		return ret;
	FUNC0(lp, data);
	return 0;
}