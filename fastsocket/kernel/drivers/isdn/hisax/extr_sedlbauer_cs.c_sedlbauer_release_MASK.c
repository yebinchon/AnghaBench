#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct pcmcia_device {TYPE_1__* priv; } ;
struct TYPE_2__ {scalar_t__ cardnr; } ;
typedef  TYPE_1__ local_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct pcmcia_device*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct pcmcia_device*) ; 

__attribute__((used)) static void FUNC3(struct pcmcia_device *link)
{
    local_info_t *local = link->priv;
    FUNC0(0, "sedlbauer_release(0x%p)\n", link);

    if (local) {
    	if (local->cardnr >= 0) {
    	    /* no unregister function with hisax */
	    FUNC1(local->cardnr);
	}
    }

    FUNC2(link);
}