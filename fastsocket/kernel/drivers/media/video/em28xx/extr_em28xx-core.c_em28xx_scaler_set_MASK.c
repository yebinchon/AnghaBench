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
typedef  int u16 ;
struct TYPE_2__ {scalar_t__ is_em2800; } ;
struct em28xx {TYPE_1__ board; } ;

/* Variables and functions */
 int /*<<< orphan*/  EM28XX_R26_COMPR ; 
 int /*<<< orphan*/  EM28XX_R30_HSCALELOW ; 
 int /*<<< orphan*/  EM28XX_R32_VSCALELOW ; 
 int FUNC0 (struct em28xx*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct em28xx*,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC2(struct em28xx *dev, u16 h, u16 v)
{
	u8 mode;
	/* the em2800 scaler only supports scaling down to 50% */

	if (dev->board.is_em2800) {
		mode = (v ? 0x20 : 0x00) | (h ? 0x10 : 0x00);
	} else {
		u8 buf[2];

		buf[0] = h;
		buf[1] = h >> 8;
		FUNC1(dev, EM28XX_R30_HSCALELOW, (char *)buf, 2);

		buf[0] = v;
		buf[1] = v >> 8;
		FUNC1(dev, EM28XX_R32_VSCALELOW, (char *)buf, 2);
		/* it seems that both H and V scalers must be active
		   to work correctly */
		mode = (h || v) ? 0x30 : 0x00;
	}
	return FUNC0(dev, EM28XX_R26_COMPR, mode, 0x30);
}