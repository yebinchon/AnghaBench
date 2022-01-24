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
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int V4L2_IDENT_CX23885_AV ; 
 int V4L2_IDENT_CX23887_AV ; 
 int V4L2_IDENT_CX23888_AV ; 
 int FUNC0 (struct i2c_client*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,char*) ; 

__attribute__((used)) static u32 FUNC3(struct i2c_client *client)
{
	u32 ret;

	/* Come out of digital power down */
	FUNC1(client, 0x000, 0);

	/* Detecting whether the part is cx23885/7/8 is more
	 * difficult than it needs to be. No ID register. Instead we
	 * probe certain registers indicated in the datasheets to look
	 * for specific defaults that differ between the silicon designs. */

	/* It's either 885/7 if the IR Tx Clk Divider register exists */
	if (FUNC0(client, 0x204) & 0xffff) {
		/* CX23885 returns bogus repetitive byte values for the DIF,
		 * which doesn't exist for it. (Ex. 8a8a8a8a or 31313131) */
		ret = FUNC0(client, 0x300);
		if (((ret & 0xffff0000) >> 16) == (ret & 0xffff)) {
			/* No DIF */
			ret = V4L2_IDENT_CX23885_AV;
		} else {
			/* CX23887 has a broken DIF, but the registers
			 * appear valid (but unsed), good enough to detect. */
			ret = V4L2_IDENT_CX23887_AV;
		}
	} else if (FUNC0(client, 0x300) & 0x0fffffff) {
		/* DIF PLL Freq Word reg exists; chip must be a CX23888 */
		ret = V4L2_IDENT_CX23888_AV;
	} else {
		FUNC2(client, "Unable to detect h/w, assuming cx23887\n");
		ret = V4L2_IDENT_CX23887_AV;
	}

	/* Back into digital power down */
	FUNC1(client, 0x000, 2);
	return ret;
}