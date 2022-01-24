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
struct qeth_card {int dummy; } ;
struct net_device {struct qeth_card* ml_priv; } ;

/* Variables and functions */
 int ERESTARTSYS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  QETH_RECOVER_THREAD ; 
 int /*<<< orphan*/  TRACE ; 
 int FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (struct qeth_card*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct net_device *dev)
{
	struct qeth_card *card = dev->ml_priv;

	FUNC0(TRACE, 5, "qethope_");
	if (FUNC2(card, QETH_RECOVER_THREAD)) {
		FUNC0(TRACE, 3, "openREC");
		return -ERESTARTSYS;
	}
	return FUNC1(dev);
}