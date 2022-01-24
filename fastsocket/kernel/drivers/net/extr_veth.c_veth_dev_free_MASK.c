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
struct veth_priv {int /*<<< orphan*/  stats; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct veth_priv* FUNC2 (struct net_device*) ; 

__attribute__((used)) static void FUNC3(struct net_device *dev)
{
	struct veth_priv *priv;

	priv = FUNC2(dev);
	FUNC1(priv->stats);
	FUNC0(dev);
}