#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int cp_running; int flags; int track_flush; int /*<<< orphan*/  cp_mode; } ;
typedef  TYPE_1__ drm_radeon_private_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int CHIP_R420 ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  R300_CP_RESYNC_ADDR ; 
 int /*<<< orphan*/  RADEON_CP_CSQ_CNTL ; 
 int RADEON_FAMILY_MASK ; 
 int RADEON_FLUSH_EMITED ; 
 int RADEON_ISYNC_ANY2D_IDLE3D ; 
 int RADEON_ISYNC_ANY3D_IDLE2D ; 
 int /*<<< orphan*/  RADEON_ISYNC_CNTL ; 
 int RADEON_ISYNC_CPSCRATCH_IDLEGUI ; 
 int RADEON_ISYNC_WAIT_IDLEGUI ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int RADEON_PURGE_EMITED ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RING_LOCALS ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC11(drm_radeon_private_t * dev_priv)
{
	RING_LOCALS;
	FUNC4("\n");

	FUNC10(dev_priv);

	FUNC9(RADEON_CP_CSQ_CNTL, dev_priv->cp_mode);

	dev_priv->cp_running = 1;

	/* on r420, any DMA from CP to system memory while 2D is active
	 * can cause a hang.  workaround is to queue a CP RESYNC token
	 */
	if ((dev_priv->flags & RADEON_FAMILY_MASK) == CHIP_R420) {
		FUNC1(3);
		FUNC5(FUNC3(R300_CP_RESYNC_ADDR, 1));
		FUNC5(5); /* scratch reg 5 */
		FUNC5(0xdeadbeef);
		FUNC0();
		FUNC2();
	}

	FUNC1(8);
	/* isync can only be written through cp on r5xx write it here */
	FUNC5(FUNC3(RADEON_ISYNC_CNTL, 0));
	FUNC5(RADEON_ISYNC_ANY2D_IDLE3D |
		 RADEON_ISYNC_ANY3D_IDLE2D |
		 RADEON_ISYNC_WAIT_IDLEGUI |
		 RADEON_ISYNC_CPSCRATCH_IDLEGUI);
	FUNC6();
	FUNC7();
	FUNC8();
	FUNC0();
	FUNC2();

	dev_priv->track_flush |= RADEON_FLUSH_EMITED | RADEON_PURGE_EMITED;
}