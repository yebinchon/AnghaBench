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
struct net_device {int /*<<< orphan*/  name; } ;
struct cp_private {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  Cmd ; 
 int /*<<< orphan*/  CpCmd ; 
 int /*<<< orphan*/  IntrMask ; 
 int /*<<< orphan*/  IntrStatus ; 
 int /*<<< orphan*/  FUNC0 (struct cp_private*) ; 
 int FUNC1 (struct cp_private*) ; 
 int /*<<< orphan*/  FUNC2 (struct cp_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct cp_private*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct cp_private* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC11(struct net_device *dev)
{
	struct cp_private *cp = FUNC6(dev);
	unsigned long flags;
	int rc;

	FUNC8("%s: Transmit timeout, status %2x %4x %4x %4x\n",
	       dev->name, FUNC5(Cmd), FUNC4(CpCmd),
	       FUNC4(IntrStatus), FUNC4(IntrMask));

	FUNC9(&cp->lock, flags);

	FUNC3(cp);
	FUNC0(cp);
	rc = FUNC1(cp);
	FUNC2(cp);

	FUNC7(dev);

	FUNC10(&cp->lock, flags);

	return;
}