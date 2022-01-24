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
struct fe_priv {int driver_data; } ;

/* Variables and functions */
 int DEV_HAS_CHECKSUM ; 
 int EOPNOTSUPP ; 
 int FUNC0 (struct net_device*,int /*<<< orphan*/ ) ; 
 struct fe_priv* FUNC1 (struct net_device*) ; 

__attribute__((used)) static int FUNC2(struct net_device *dev, u32 value)
{
	struct fe_priv *np = FUNC1(dev);

	if ((np->driver_data & DEV_HAS_CHECKSUM))
		return FUNC0(dev, value);
	else
		return -EOPNOTSUPP;
}