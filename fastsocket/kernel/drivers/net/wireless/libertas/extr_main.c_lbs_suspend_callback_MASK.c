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
struct lbs_private {scalar_t__ fw_ready; scalar_t__ mesh_dev; scalar_t__ dev; } ;
struct cmd_header {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LBS_DEB_FW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct lbs_private *priv, unsigned long dummy,
				struct cmd_header *cmd)
{
	FUNC0(LBS_DEB_FW);

	FUNC2(priv->dev);
	if (priv->mesh_dev)
		FUNC2(priv->mesh_dev);

	priv->fw_ready = 0;
	FUNC1(LBS_DEB_FW);
	return 0;
}