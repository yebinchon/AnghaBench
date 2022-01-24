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
typedef  int u16 ;
struct em28xx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EM28XX_R1B_OFLOW ; 
 int /*<<< orphan*/  EM28XX_R1C_HSTART ; 
 int /*<<< orphan*/  EM28XX_R1D_VSTART ; 
 int /*<<< orphan*/  EM28XX_R1E_CWIDTH ; 
 int /*<<< orphan*/  EM28XX_R1F_CHEIGHT ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int FUNC1 (struct em28xx*,int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static int FUNC2(struct em28xx *dev, u8 hstart, u8 vstart,
				   u16 width, u16 height)
{
	u8 cwidth = width;
	u8 cheight = height;
	u8 overflow = (height >> 7 & 0x02) | (width >> 8 & 0x01);

	FUNC0("em28xx Area Set: (%d,%d)\n",
			(width | (overflow & 2) << 7),
			(height | (overflow & 1) << 8));

	FUNC1(dev, EM28XX_R1C_HSTART, &hstart, 1);
	FUNC1(dev, EM28XX_R1D_VSTART, &vstart, 1);
	FUNC1(dev, EM28XX_R1E_CWIDTH, &cwidth, 1);
	FUNC1(dev, EM28XX_R1F_CHEIGHT, &cheight, 1);
	return FUNC1(dev, EM28XX_R1B_OFLOW, &overflow, 1);
}