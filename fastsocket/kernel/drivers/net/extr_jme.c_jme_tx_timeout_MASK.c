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
struct net_device {int dummy; } ;
struct jme_adapter {int /*<<< orphan*/  old_ecmd; int /*<<< orphan*/  flags; scalar_t__ phylink; } ;

/* Variables and functions */
 int /*<<< orphan*/  JME_FLAG_SSET ; 
 int /*<<< orphan*/  FUNC0 (struct jme_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct jme_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ *) ; 
 struct jme_adapter* FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct net_device *netdev)
{
	struct jme_adapter *jme = FUNC3(netdev);

	jme->phylink = 0;
	FUNC1(jme);
	if (FUNC4(JME_FLAG_SSET, &jme->flags))
		FUNC2(netdev, &jme->old_ecmd);

	/*
	 * Force to Reset the link again
	 */
	FUNC0(jme);
}