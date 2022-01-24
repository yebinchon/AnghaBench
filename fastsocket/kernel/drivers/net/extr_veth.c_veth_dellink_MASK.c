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
struct veth_priv {struct net_device* peer; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 struct veth_priv* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 

__attribute__((used)) static void FUNC2(struct net_device *dev)
{
	struct veth_priv *priv;
	struct net_device *peer;

	priv = FUNC0(dev);
	peer = priv->peer;

	FUNC1(dev);
	FUNC1(peer);
}