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
typedef  int u32 ;
struct nv50_i2c_port {int addr; } ;
struct nouveau_i2c_port {int dummy; } ;
struct nouveau_i2c {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int ENXIO ; 
 int EREMOTEIO ; 
 int /*<<< orphan*/  FUNC2 (struct nouveau_i2c*,int) ; 
 int FUNC3 (struct nouveau_i2c*,int) ; 
 int /*<<< orphan*/  FUNC4 (int*,int*,int) ; 
 struct nouveau_i2c* FUNC5 (struct nouveau_i2c_port*) ; 
 int FUNC6 (struct nouveau_i2c*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct nouveau_i2c*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct nouveau_i2c*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

int
FUNC10(struct nouveau_i2c_port *base, u8 type, u32 addr, u8 *data, u8 size)
{
	struct nouveau_i2c *aux = FUNC5(base);
	struct nv50_i2c_port *port = (void *)base;
	u32 ctrl, stat, timeout, retries;
	u32 xbuf[4] = {};
	int ch = port->addr;
	int ret, i;

	FUNC0("%d: 0x%08x %d\n", type, addr, size);

	ret = FUNC3(aux, ch);
	if (ret)
		goto out;

	stat = FUNC7(aux, 0x00e4e8 + (ch * 0x50));
	if (!(stat & 0x10000000)) {
		FUNC0("sink not detected\n");
		ret = -ENXIO;
		goto out;
	}

	if (!(type & 1)) {
		FUNC4(xbuf, data, size);
		for (i = 0; i < 16; i += 4) {
			FUNC0("wr 0x%08x\n", xbuf[i / 4]);
			FUNC8(aux, 0x00e4c0 + (ch * 0x50) + i, xbuf[i / 4]);
		}
	}

	ctrl  = FUNC7(aux, 0x00e4e4 + (ch * 0x50));
	ctrl &= ~0x0001f0ff;
	ctrl |= type << 12;
	ctrl |= size - 1;
	FUNC8(aux, 0x00e4e0 + (ch * 0x50), addr);

	/* retry transaction a number of times on failure... */
	ret = -EREMOTEIO;
	for (retries = 0; retries < 32; retries++) {
		/* reset, and delay a while if this is a retry */
		FUNC8(aux, 0x00e4e4 + (ch * 0x50), 0x80000000 | ctrl);
		FUNC8(aux, 0x00e4e4 + (ch * 0x50), 0x00000000 | ctrl);
		if (retries)
			FUNC9(400);

		/* transaction request, wait up to 1ms for it to complete */
		FUNC8(aux, 0x00e4e4 + (ch * 0x50), 0x00010000 | ctrl);

		timeout = 1000;
		do {
			ctrl = FUNC7(aux, 0x00e4e4 + (ch * 0x50));
			FUNC9(1);
			if (!timeout--) {
				FUNC1("tx req timeout 0x%08x\n", ctrl);
				goto out;
			}
		} while (ctrl & 0x00010000);

		/* read status, and check if transaction completed ok */
		stat = FUNC6(aux, 0x00e4e8 + (ch * 0x50), 0, 0);
		if (!(stat & 0x000f0f00)) {
			ret = 0;
			break;
		}

		FUNC0("%02d 0x%08x 0x%08x\n", retries, ctrl, stat);
	}

	if (type & 1) {
		for (i = 0; i < 16; i += 4) {
			xbuf[i / 4] = FUNC7(aux, 0x00e4d0 + (ch * 0x50) + i);
			FUNC0("rd 0x%08x\n", xbuf[i / 4]);
		}
		FUNC4(data, xbuf, size);
	}

out:
	FUNC2(aux, ch);
	return ret;
}