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
struct pcmcia_device {struct ipw_dev* priv; } ;
struct ipw_dev {int /*<<< orphan*/ * hardware; int /*<<< orphan*/ * network; int /*<<< orphan*/ * tty; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ipw_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct ipw_dev*) ; 

__attribute__((used)) static void FUNC5(struct pcmcia_device *link)
{
	struct ipw_dev *ipw = link->priv;

	FUNC4(ipw);

	if (ipw->tty != NULL)
		FUNC2(ipw->tty);
	if (ipw->network != NULL)
		FUNC1(ipw->network);
	if (ipw->hardware != NULL)
		FUNC0(ipw->hardware);
	FUNC3(ipw);
}