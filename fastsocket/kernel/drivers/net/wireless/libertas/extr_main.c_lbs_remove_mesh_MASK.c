#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;
struct net_device {TYPE_1__ dev; } ;
struct lbs_private {struct net_device* mesh_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  LBS_DEB_MESH ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lbs_mesh_attr_group ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 

__attribute__((used)) static void FUNC8(struct lbs_private *priv)
{
	struct net_device *mesh_dev;


	mesh_dev = priv->mesh_dev;
	if (!mesh_dev)
		return;

	FUNC1(LBS_DEB_MESH);
	FUNC5(mesh_dev);
	FUNC4(mesh_dev);
	FUNC6(&(mesh_dev->dev.kobj), &lbs_mesh_attr_group);
	FUNC3(mesh_dev);
	FUNC7(mesh_dev);
	priv->mesh_dev = NULL;
	FUNC0(mesh_dev);
	FUNC2(LBS_DEB_MESH);
}