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
struct jme_adapter {int /*<<< orphan*/  flags; int /*<<< orphan*/  link_changing; struct net_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  JME_FLAG_POLL ; 
 int /*<<< orphan*/  JME_FLAG_SHUTDOWN ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct jme_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct jme_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct jme_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct jme_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static void
FUNC8(unsigned long arg)
{
	struct jme_adapter *jme = (struct jme_adapter *)arg;
	struct net_device *netdev = jme->dev;

	if (FUNC7(FUNC6(JME_FLAG_SHUTDOWN, &jme->flags))) {
		FUNC2(jme);
		return;
	}

	if (FUNC7(!FUNC5(netdev) ||
		(FUNC0(&jme->link_changing) != 1)
	)) {
		FUNC4(jme);
		return;
	}

	if (!(FUNC6(JME_FLAG_POLL, &jme->flags)))
		FUNC1(jme);

	FUNC3(jme);
}