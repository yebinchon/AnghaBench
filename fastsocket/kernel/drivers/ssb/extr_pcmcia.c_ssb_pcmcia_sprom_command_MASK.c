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
typedef  int u8 ;
struct ssb_bus {int dummy; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  SSB_PCMCIA_SPROMCTL ; 
 int SSB_PCMCIA_SPROMCTL_DONE ; 
 int FUNC0 (struct ssb_bus*,int /*<<< orphan*/ ,int*) ; 
 int FUNC1 (struct ssb_bus*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct ssb_bus *bus, u8 command)
{
	unsigned int i;
	int err;
	u8 value;

	err = FUNC1(bus, SSB_PCMCIA_SPROMCTL, command);
	if (err)
		return err;
	for (i = 0; i < 1000; i++) {
		err = FUNC0(bus, SSB_PCMCIA_SPROMCTL, &value);
		if (err)
			return err;
		if (value & SSB_PCMCIA_SPROMCTL_DONE)
			return 0;
		FUNC2(10);
	}

	return -ETIMEDOUT;
}