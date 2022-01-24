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
typedef  int u8 ;
struct nouveau_i2c_port {int dummy; } ;
struct anx9805_i2c_port {int /*<<< orphan*/  addr; } ;
struct TYPE_2__ {scalar_t__ parent; } ;

/* Variables and functions */
 int EIO ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_i2c_port*,char*,...) ; 
 TYPE_1__* FUNC2 (struct anx9805_i2c_port*) ; 
 int FUNC3 (struct nouveau_i2c_port*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nouveau_i2c_port*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int
FUNC5(struct nouveau_i2c_port *port, int link_nr, int link_bw, bool enh)
{
	struct anx9805_i2c_port *chan = (void *)port;
	struct nouveau_i2c_port *mast = (void *)FUNC2(chan)->parent;
	u8 tmp, i;

	FUNC4(mast, chan->addr, 0xa0, link_bw);
	FUNC4(mast, chan->addr, 0xa1, link_nr | (enh ? 0x80 : 0x00));
	FUNC4(mast, chan->addr, 0xa2, 0x01);
	FUNC4(mast, chan->addr, 0xa8, 0x01);

	i = 0;
	while ((tmp = FUNC3(mast, chan->addr, 0xa8)) & 0x01) {
		FUNC0(5);
		if (i++ == 100) {
			FUNC1(port, "link training timed out\n");
			return -ETIMEDOUT;
		}
	}

	if (tmp & 0x70) {
		FUNC1(port, "link training failed: 0x%02x\n", tmp);
		return -EIO;
	}

	return 1;
}