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
typedef  int u32 ;
struct nouveau_i2c_port {int dummy; } ;
struct anx9805_i2c_port {int /*<<< orphan*/  ctrl; int /*<<< orphan*/  addr; } ;
struct TYPE_2__ {scalar_t__ parent; } ;

/* Variables and functions */
 int EIO ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (struct anx9805_i2c_port*) ; 
 int FUNC2 (struct nouveau_i2c_port*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nouveau_i2c_port*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int
FUNC4(struct nouveau_i2c_port *port, u8 type, u32 addr, u8 *data, u8 size)
{
	struct anx9805_i2c_port *chan = (void *)port;
	struct nouveau_i2c_port *mast = (void *)FUNC1(chan)->parent;
	int i, ret = -ETIMEDOUT;
	u8 tmp;

	tmp = FUNC2(mast, chan->ctrl, 0x07) & ~0x04;
	FUNC3(mast, chan->ctrl, 0x07, tmp | 0x04);
	FUNC3(mast, chan->ctrl, 0x07, tmp);
	FUNC3(mast, chan->ctrl, 0xf7, 0x01);

	FUNC3(mast, chan->addr, 0xe4, 0x80);
	for (i = 0; !(type & 1) && i < size; i++)
		FUNC3(mast, chan->addr, 0xf0 + i, data[i]);
	FUNC3(mast, chan->addr, 0xe5, ((size - 1) << 4) | type);
	FUNC3(mast, chan->addr, 0xe6, (addr & 0x000ff) >>  0);
	FUNC3(mast, chan->addr, 0xe7, (addr & 0x0ff00) >>  8);
	FUNC3(mast, chan->addr, 0xe8, (addr & 0xf0000) >> 16);
	FUNC3(mast, chan->addr, 0xe9, 0x01);

	i = 0;
	while ((tmp = FUNC2(mast, chan->addr, 0xe9)) & 0x01) {
		FUNC0(5);
		if (i++ == 32)
			goto done;
	}

	if ((tmp = FUNC2(mast, chan->ctrl, 0xf7)) & 0x01) {
		ret = -EIO;
		goto done;
	}

	for (i = 0; (type & 1) && i < size; i++)
		data[i] = FUNC2(mast, chan->addr, 0xf0 + i);
	ret = 0;
done:
	FUNC3(mast, chan->ctrl, 0xf7, 0x01);
	return ret;
}