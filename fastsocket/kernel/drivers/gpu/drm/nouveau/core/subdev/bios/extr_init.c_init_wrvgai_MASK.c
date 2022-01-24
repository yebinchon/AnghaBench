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
struct nvbios_init {int crtc; int /*<<< orphan*/  subdev; } ;
struct TYPE_2__ {scalar_t__ card_type; } ;

/* Variables and functions */
 scalar_t__ NV_50 ; 
 scalar_t__ FUNC0 (struct nvbios_init*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int,int,int) ; 

__attribute__((used)) static void
FUNC3(struct nvbios_init *init, u16 port, u8 index, u8 value)
{
	/* force head 0 for updates to cr44, it only exists on first head */
	if (FUNC1(init->subdev)->card_type < NV_50) {
		if (port == 0x03d4 && index == 0x44)
			init->crtc = 0;
	}

	if (FUNC0(init)) {
		int head = init->crtc < 0 ? 0 : init->crtc;
		FUNC2(init->subdev, head, port, index, value);
	}

	/* select head 1 if cr44 write selected it */
	if (FUNC1(init->subdev)->card_type < NV_50) {
		if (port == 0x03d4 && index == 0x44 && value == 3)
			init->crtc = 1;
	}
}