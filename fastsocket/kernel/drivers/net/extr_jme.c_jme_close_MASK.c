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
struct jme_adapter {scalar_t__ phylink; int /*<<< orphan*/  rxempty_task; int /*<<< orphan*/  rxclean_task; int /*<<< orphan*/  txclean_task; int /*<<< orphan*/  linkch_task; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct jme_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct jme_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct jme_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct jme_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct jme_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct jme_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct jme_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct jme_adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct jme_adapter*) ; 
 int /*<<< orphan*/  FUNC9 (struct jme_adapter*) ; 
 struct jme_adapter* FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC14(struct net_device *netdev)
{
	struct jme_adapter *jme = FUNC10(netdev);

	FUNC12(netdev);
	FUNC11(netdev);

	FUNC9(jme);
	FUNC3(jme);

	FUNC0(jme);

	FUNC13(&jme->linkch_task);
	FUNC13(&jme->txclean_task);
	FUNC13(&jme->rxclean_task);
	FUNC13(&jme->rxempty_task);

	FUNC7(jme);
	FUNC1(jme);
	FUNC2(jme);
	FUNC8(jme);
	FUNC4(jme);
	FUNC5(jme);
	jme->phylink = 0;
	FUNC6(jme);

	return 0;
}