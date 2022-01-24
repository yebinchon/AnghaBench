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
struct jme_adapter {int /*<<< orphan*/  old_ecmd; int /*<<< orphan*/  flags; int /*<<< orphan*/  rxempty_task; int /*<<< orphan*/  rxclean_task; int /*<<< orphan*/  txclean_task; int /*<<< orphan*/  linkch_task; } ;

/* Variables and functions */
 int /*<<< orphan*/  JME_FLAG_SSET ; 
 int /*<<< orphan*/  FUNC0 (struct jme_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct jme_adapter*) ; 
 int FUNC2 (struct jme_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct jme_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct jme_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct jme_adapter*) ; 
 struct jme_adapter* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC13(struct net_device *netdev)
{
	struct jme_adapter *jme = FUNC7(netdev);
	int rc;

	FUNC1(jme);
	FUNC0(jme);

	FUNC10(&jme->linkch_task);
	FUNC10(&jme->txclean_task);
	FUNC11(&jme->rxclean_task);
	FUNC11(&jme->rxempty_task);

	rc = FUNC2(jme);
	if (rc)
		goto err_out;

	FUNC6(jme);

	if (FUNC12(JME_FLAG_SSET, &jme->flags))
		FUNC5(netdev, &jme->old_ecmd);
	else
		FUNC4(jme);

	FUNC3(jme);

	return 0;

err_out:
	FUNC9(netdev);
	FUNC8(netdev);
	return rc;
}