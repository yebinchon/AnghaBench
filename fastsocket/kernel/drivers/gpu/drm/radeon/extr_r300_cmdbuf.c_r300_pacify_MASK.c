#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_3__ {int track_flush; } ;
typedef  TYPE_1__ drm_radeon_private_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  R300_DSTCACHE_CTLSTAT ; 
 int R300_RB2D_DC_FLUSH ; 
 int R300_RB2D_DC_FREE ; 
 int /*<<< orphan*/  R300_RB3D_AARESOLVE_CTL ; 
 int R300_RB3D_DC_FLUSH ; 
 int R300_RB3D_DC_FREE ; 
 int /*<<< orphan*/  R300_RB3D_DSTCACHE_CTLSTAT ; 
 int /*<<< orphan*/  R300_TX_INVALTAGS ; 
 int /*<<< orphan*/  R300_ZB_ZCACHE_CTLSTAT ; 
 int R300_ZC_FLUSH ; 
 int R300_ZC_FREE ; 
 int RADEON_FLUSH_EMITED ; 
 int RADEON_PURGE_EMITED ; 
 int RADEON_WAIT_2D_IDLECLEAN ; 
 int RADEON_WAIT_3D_IDLECLEAN ; 
 int RADEON_WAIT_HOST_IDLECLEAN ; 
 int /*<<< orphan*/  RADEON_WAIT_UNTIL ; 
 int /*<<< orphan*/  RING_LOCALS ; 

__attribute__((used)) static void FUNC4(drm_radeon_private_t *dev_priv)
{
	uint32_t cache_z, cache_3d, cache_2d;
	RING_LOCALS;

	cache_z = R300_ZC_FLUSH;
	cache_2d = R300_RB2D_DC_FLUSH;
	cache_3d = R300_RB3D_DC_FLUSH;
	if (!(dev_priv->track_flush & RADEON_PURGE_EMITED)) {
		/* we can purge, primitive where draw since last purge */
		cache_z |= R300_ZC_FREE;
		cache_2d |= R300_RB2D_DC_FREE;
		cache_3d |= R300_RB3D_DC_FREE;
	}

	/* flush & purge zbuffer */
	FUNC1(2);
	FUNC3(FUNC2(R300_ZB_ZCACHE_CTLSTAT, 0));
	FUNC3(cache_z);
	FUNC0();
	/* flush & purge 3d */
	FUNC1(2);
	FUNC3(FUNC2(R300_RB3D_DSTCACHE_CTLSTAT, 0));
	FUNC3(cache_3d);
	FUNC0();
	/* flush & purge texture */
	FUNC1(2);
	FUNC3(FUNC2(R300_TX_INVALTAGS, 0));
	FUNC3(0);
	FUNC0();
	/* FIXME: is this one really needed ? */
	FUNC1(2);
	FUNC3(FUNC2(R300_RB3D_AARESOLVE_CTL, 0));
	FUNC3(0);
	FUNC0();
	FUNC1(2);
	FUNC3(FUNC2(RADEON_WAIT_UNTIL, 0));
	FUNC3(RADEON_WAIT_3D_IDLECLEAN);
	FUNC0();
	/* flush & purge 2d through E2 as RB2D will trigger lockup */
	FUNC1(4);
	FUNC3(FUNC2(R300_DSTCACHE_CTLSTAT, 0));
	FUNC3(cache_2d);
	FUNC3(FUNC2(RADEON_WAIT_UNTIL, 0));
	FUNC3(RADEON_WAIT_2D_IDLECLEAN |
		 RADEON_WAIT_HOST_IDLECLEAN);
	FUNC0();
	/* set flush & purge flags */
	dev_priv->track_flush |= RADEON_FLUSH_EMITED | RADEON_PURGE_EMITED;
}