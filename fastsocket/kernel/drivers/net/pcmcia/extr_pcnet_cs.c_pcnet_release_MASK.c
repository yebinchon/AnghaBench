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
struct pcmcia_device {int /*<<< orphan*/  priv; } ;
struct TYPE_3__ {int flags; int /*<<< orphan*/  base; } ;
typedef  TYPE_1__ pcnet_dev_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct pcmcia_device*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int USE_SHMEM ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pcmcia_device*) ; 

__attribute__((used)) static void FUNC4(struct pcmcia_device *link)
{
	pcnet_dev_t *info = FUNC1(link->priv);

	FUNC0(0, "pcnet_release(0x%p)\n", link);

	if (info->flags & USE_SHMEM)
		FUNC2(info->base);

	FUNC3(link);
}