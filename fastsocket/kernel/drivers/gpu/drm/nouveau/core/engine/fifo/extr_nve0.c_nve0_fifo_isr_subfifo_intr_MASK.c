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
typedef  int u32 ;
struct nve0_fifo_priv {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nve0_fifo_priv*,char*,int,...) ; 
 int FUNC3 (struct nve0_fifo_priv*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nve0_fifo_priv*,int,int) ; 
 int /*<<< orphan*/  nve0_fifo_subfifo_intr ; 
 int /*<<< orphan*/  FUNC5 (struct nve0_fifo_priv*,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static void
FUNC7(struct nve0_fifo_priv *priv, int unit)
{
	u32 stat = FUNC3(priv, 0x040108 + (unit * 0x2000));
	u32 addr = FUNC3(priv, 0x0400c0 + (unit * 0x2000));
	u32 data = FUNC3(priv, 0x0400c4 + (unit * 0x2000));
	u32 chid = FUNC3(priv, 0x040120 + (unit * 0x2000)) & 0xfff;
	u32 subc = (addr & 0x00070000) >> 16;
	u32 mthd = (addr & 0x00003ffc);
	u32 show = stat;

	if (stat & 0x00200000) {
		if (mthd == 0x0054) {
			if (!FUNC5(priv, chid, 0x0500, 0x00000000))
				show &= ~0x00200000;
		}
	}

	if (stat & 0x00800000) {
		if (!FUNC5(priv, chid, mthd, data))
			show &= ~0x00800000;
	}

	if (show) {
		FUNC2(priv, "SUBFIFO%d:", unit);
		FUNC0(nve0_fifo_subfifo_intr, show);
		FUNC6("\n");
		FUNC2(priv,
			 "SUBFIFO%d: ch %d [%s] subc %d mthd 0x%04x data 0x%08x\n",
			 unit, chid,
			 FUNC1(&priv->base, chid),
			 subc, mthd, data);
	}

	FUNC4(priv, 0x0400c0 + (unit * 0x2000), 0x80600008);
	FUNC4(priv, 0x040108 + (unit * 0x2000), stat);
}