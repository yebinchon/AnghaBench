#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pcmcia_device {scalar_t__ suspended; scalar_t__ _removed; TYPE_2__* socket; } ;
struct TYPE_3__ {int /*<<< orphan*/  present; } ;
struct TYPE_4__ {TYPE_1__ pcmcia_state; } ;

/* Variables and functions */
 struct pcmcia_device* FUNC0 (struct pcmcia_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct pcmcia_device*) ; 

struct pcmcia_device * FUNC2(struct pcmcia_device *_p_dev)
{
	struct pcmcia_device *p_dev;
	struct pcmcia_device *ret = NULL;

	p_dev = FUNC0(_p_dev);
	if (!p_dev)
		return NULL;

	if (!p_dev->socket->pcmcia_state.present)
		goto out;

	if (p_dev->_removed)
		goto out;

	if (p_dev->suspended)
		goto out;

	ret = p_dev;
 out:
	FUNC1(p_dev);
	return ret;
}