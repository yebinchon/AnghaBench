#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pcmciamtd_dev {TYPE_1__* mtd_info; } ;
struct pcmcia_device {struct pcmciamtd_dev* priv; } ;
struct TYPE_3__ {int /*<<< orphan*/  index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,struct pcmcia_device*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct pcmcia_device*) ; 

__attribute__((used)) static void FUNC5(struct pcmcia_device *link)
{
	struct pcmciamtd_dev *dev = link->priv;

	FUNC0(3, "link=0x%p", link);

	if(dev->mtd_info) {
		FUNC1(dev->mtd_info);
		FUNC3(dev->mtd_info);
		FUNC2("mtd%d: Removed", dev->mtd_info->index);
	}

	FUNC4(link);
}