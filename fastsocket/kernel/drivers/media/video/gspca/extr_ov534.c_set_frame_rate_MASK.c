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
typedef  scalar_t__ u8 ;
struct sd {scalar_t__ frame_rate; } ;
struct TYPE_4__ {TYPE_1__* cam_mode; } ;
struct gspca_dev {size_t curr_mode; TYPE_2__ cam; } ;
struct TYPE_3__ {scalar_t__ priv; } ;

/* Variables and functions */
 int FUNC0 (struct rate_s const*) ; 
 int /*<<< orphan*/  D_PROBE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct gspca_dev*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct gspca_dev*,int,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct gspca_dev *gspca_dev)
{
	struct sd *sd = (struct sd *) gspca_dev;
	int i;
	struct rate_s {
		u8 fps;
		u8 r11;
		u8 r0d;
		u8 re5;
	};
	const struct rate_s *r;
	static const struct rate_s rate_0[] = {	/* 640x480 */
		{60, 0x01, 0xc1, 0x04},
		{50, 0x01, 0x41, 0x02},
		{40, 0x02, 0xc1, 0x04},
		{30, 0x04, 0x81, 0x02},
		{15, 0x03, 0x41, 0x04},
	};
	static const struct rate_s rate_1[] = {	/* 320x240 */
		{125, 0x02, 0x81, 0x02},
		{100, 0x02, 0xc1, 0x04},
		{75, 0x03, 0xc1, 0x04},
		{60, 0x04, 0xc1, 0x04},
		{50, 0x02, 0x41, 0x04},
		{40, 0x03, 0x41, 0x04},
		{30, 0x04, 0x41, 0x04},
	};

	if (gspca_dev->cam.cam_mode[gspca_dev->curr_mode].priv == 0) {
		r = rate_0;
		i = FUNC0(rate_0);
	} else {
		r = rate_1;
		i = FUNC0(rate_1);
	}
	while (--i > 0) {
		if (sd->frame_rate >= r->fps)
			break;
		r++;
	}

	FUNC3(gspca_dev, 0x11, r->r11);
	FUNC3(gspca_dev, 0x0d, r->r0d);
	FUNC2(gspca_dev, 0xe5, r->re5);

	FUNC1(D_PROBE, "frame_rate: %d", r->fps);
}