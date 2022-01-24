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
struct wiphy {int /*<<< orphan*/  privid; } ;
struct orinoco_private {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  orinoco_wiphy_privid ; 
 int /*<<< orphan*/  FUNC0 (struct wiphy*,int /*<<< orphan*/ ) ; 
 struct orinoco_private* FUNC1 (struct wiphy*) ; 

void FUNC2(struct wiphy *wiphy)
{
	struct orinoco_private *priv = FUNC1(wiphy);

	wiphy->privid = orinoco_wiphy_privid;

	FUNC0(wiphy, priv->dev);
}