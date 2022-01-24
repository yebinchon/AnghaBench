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
struct sd {int bridge; scalar_t__ stopped; } ;

/* Variables and functions */
#define  BRIDGE_OV511 134 
#define  BRIDGE_OV511PLUS 133 
#define  BRIDGE_OV518 132 
#define  BRIDGE_OV518PLUS 131 
#define  BRIDGE_OV519 130 
#define  BRIDGE_OVFX2 129 
#define  BRIDGE_W9968CF 128 
 int /*<<< orphan*/  D_STREAM ; 
 int OV519_R51_RESET1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int R51x_SYS_RESET ; 
 int /*<<< orphan*/  FUNC1 (struct sd*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sd*,int,int,int) ; 

__attribute__((used)) static inline void FUNC3(struct sd *sd)
{
	FUNC0(D_STREAM, "restarting");
	if (!sd->stopped)
		return;
	sd->stopped = 0;

	/* Reinitialize the stream */
	switch (sd->bridge) {
	case BRIDGE_OV511:
	case BRIDGE_OV511PLUS:
		FUNC1(sd, R51x_SYS_RESET, 0x00);
		break;
	case BRIDGE_OV518:
	case BRIDGE_OV518PLUS:
		FUNC1(sd, 0x2f, 0x80);
		FUNC1(sd, R51x_SYS_RESET, 0x00);
		break;
	case BRIDGE_OV519:
		FUNC1(sd, OV519_R51_RESET1, 0x0f);
		FUNC1(sd, OV519_R51_RESET1, 0x00);
		FUNC1(sd, 0x22, 0x1d);		/* FRAR */
		break;
	case BRIDGE_OVFX2:
		FUNC2(sd, 0x0f, 0x02, 0x02);
		break;
	case BRIDGE_W9968CF:
		FUNC1(sd, 0x3c, 0x8a05); /* USB FIFO enable */
		break;
	}
}