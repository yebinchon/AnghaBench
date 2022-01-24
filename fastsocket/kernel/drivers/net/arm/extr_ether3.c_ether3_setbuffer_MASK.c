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
struct net_device {int /*<<< orphan*/  name; } ;
typedef  scalar_t__ buffer_rw_t ;
struct TYPE_3__ {int config1; int command; } ;
struct TYPE_4__ {int broken; TYPE_1__ regs; } ;

/* Variables and functions */
 int CFG1_LOCBUFMEM ; 
 int CMD_FIFOREAD ; 
 int CMD_FIFOWRITE ; 
 int /*<<< orphan*/  REG_COMMAND ; 
 int /*<<< orphan*/  REG_CONFIG1 ; 
 int /*<<< orphan*/  REG_DMAADDR ; 
 int /*<<< orphan*/  REG_STATUS ; 
 int STAT_FIFOEMPTY ; 
 scalar_t__ buffer_read ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int
FUNC5(struct net_device *dev, buffer_rw_t read, int start)
{
	int timeout = 1000;

	FUNC1(FUNC3(dev)->regs.config1 | CFG1_LOCBUFMEM, REG_CONFIG1);
	FUNC1(FUNC3(dev)->regs.command | CMD_FIFOWRITE, REG_COMMAND);

	while ((FUNC0(REG_STATUS) & STAT_FIFOEMPTY) == 0) {
		if (!timeout--) {
			FUNC2("%s: setbuffer broken\n", dev->name);
			FUNC3(dev)->broken = 1;
			return 1;
		}
		FUNC4(1);
	}

	if (read == buffer_read) {
		FUNC1(start, REG_DMAADDR);
		FUNC1(FUNC3(dev)->regs.command | CMD_FIFOREAD, REG_COMMAND);
	} else {
		FUNC1(FUNC3(dev)->regs.command | CMD_FIFOWRITE, REG_COMMAND);
		FUNC1(start, REG_DMAADDR);
	}
	return 0;
}