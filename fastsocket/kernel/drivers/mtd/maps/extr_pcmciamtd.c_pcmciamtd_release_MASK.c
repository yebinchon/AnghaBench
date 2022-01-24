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
struct pcmciamtd_dev {int /*<<< orphan*/ * win_base; } ;
struct pcmcia_device {scalar_t__ win; struct pcmciamtd_dev* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,struct pcmcia_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pcmcia_device*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct pcmcia_device *link)
{
	struct pcmciamtd_dev *dev = link->priv;

	FUNC0(3, "link = 0x%p", link);

	if (link->win) {
		if(dev->win_base) {
			FUNC1(dev->win_base);
			dev->win_base = NULL;
		}
		FUNC3(link->win);
	}
	FUNC2(link);
}