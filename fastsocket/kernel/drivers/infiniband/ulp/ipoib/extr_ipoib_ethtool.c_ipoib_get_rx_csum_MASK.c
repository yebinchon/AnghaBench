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
struct net_device {int dummy; } ;
struct ipoib_dev_priv {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPOIB_FLAG_ADMIN_CM ; 
 int /*<<< orphan*/  IPOIB_FLAG_CSUM ; 
 struct ipoib_dev_priv* FUNC0 (struct net_device*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static u32 FUNC2(struct net_device *dev)
{
	struct ipoib_dev_priv *priv = FUNC0(dev);
	return FUNC1(IPOIB_FLAG_CSUM, &priv->flags) &&
		!FUNC1(IPOIB_FLAG_ADMIN_CM, &priv->flags);
}