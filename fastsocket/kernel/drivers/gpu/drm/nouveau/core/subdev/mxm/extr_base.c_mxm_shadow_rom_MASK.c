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
struct nouveau_mxm {int* mxms; } ;
struct nouveau_i2c_port {int dummy; } ;
struct nouveau_i2c {struct nouveau_i2c_port* (* find ) (struct nouveau_i2c*,int) ;} ;
struct nouveau_bios {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct nouveau_bios*,int) ; 
 scalar_t__ FUNC3 (struct nouveau_i2c_port*,int,int /*<<< orphan*/ ,int,int*) ; 
 int FUNC4 (struct nouveau_mxm*) ; 
 int FUNC5 (struct nouveau_mxm*) ; 
 struct nouveau_bios* FUNC6 (struct nouveau_mxm*) ; 
 struct nouveau_i2c* FUNC7 (struct nouveau_mxm*) ; 
 struct nouveau_i2c_port* FUNC8 (struct nouveau_i2c*,int) ; 

__attribute__((used)) static bool
FUNC9(struct nouveau_mxm *mxm, u8 version)
{
	struct nouveau_bios *bios = FUNC6(mxm);
	struct nouveau_i2c *i2c = FUNC7(mxm);
	struct nouveau_i2c_port *port = NULL;
	u8 i2cidx, mxms[6], addr, size;

	i2cidx = FUNC2(bios, 1 /* LVDS_DDC */) & 0x0f;
	if (i2cidx < 0x0f)
		port = i2c->find(i2c, i2cidx);
	if (!port)
		return false;

	addr = 0x54;
	if (!FUNC3(port, addr, 0, 6, mxms)) {
		addr = 0x56;
		if (!FUNC3(port, addr, 0, 6, mxms))
			return false;
	}

	mxm->mxms = mxms;
	size = FUNC4(mxm) + FUNC5(mxm);
	mxm->mxms = FUNC1(size, GFP_KERNEL);

	if (mxm->mxms &&
	    FUNC3(port, addr, 0, size, mxm->mxms))
		return true;

	FUNC0(mxm->mxms);
	mxm->mxms = NULL;
	return false;
}