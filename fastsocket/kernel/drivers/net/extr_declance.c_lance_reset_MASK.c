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
struct net_device {int /*<<< orphan*/  trans_start; } ;
struct lance_regs {int /*<<< orphan*/  rdp; int /*<<< orphan*/  rap; } ;
struct lance_private {struct lance_regs* ll; } ;

/* Variables and functions */
 int /*<<< orphan*/  LE_C0_STOP ; 
 int /*<<< orphan*/  LE_CSR0 ; 
 int FUNC0 (struct lance_private*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct lance_private*) ; 
 struct lance_private* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC5(struct net_device *dev)
{
	struct lance_private *lp = FUNC3(dev);
	volatile struct lance_regs *ll = lp->ll;
	int status;

	/* Stop the lance */
	FUNC4(&ll->rap, LE_CSR0);
	FUNC4(&ll->rdp, LE_C0_STOP);

	FUNC1(dev);
	FUNC2(lp);
	dev->trans_start = jiffies;
	status = FUNC0(lp);
	return status;
}