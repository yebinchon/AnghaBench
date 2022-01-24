#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  track_flush; } ;
typedef  TYPE_2__ drm_radeon_private_t ;
struct TYPE_10__ {int /*<<< orphan*/  buffer; } ;
typedef  TYPE_3__ drm_radeon_kcmd_buffer_t ;
struct TYPE_8__ {int count; int adrhi; int adrlo; } ;
struct TYPE_11__ {TYPE_1__ vpu; } ;
typedef  TYPE_4__ drm_r300_cmd_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  R300_RB3D_DC_FLUSH ; 
 int /*<<< orphan*/  R300_RB3D_DSTCACHE_CTLSTAT ; 
 int /*<<< orphan*/  R300_VAP_PVS_STATE_FLUSH_REG ; 
 int /*<<< orphan*/  R300_VAP_PVS_UPLOAD_ADDRESS ; 
 int /*<<< orphan*/  R300_VAP_PVS_UPLOAD_DATA ; 
 int /*<<< orphan*/  RADEON_FLUSH_EMITED ; 
 int /*<<< orphan*/  RADEON_WAIT_3D_IDLECLEAN ; 
 int /*<<< orphan*/  RADEON_WAIT_UNTIL ; 
 int /*<<< orphan*/  RING_LOCALS ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static __inline__ int FUNC8(drm_radeon_private_t *dev_priv,
				    drm_radeon_kcmd_buffer_t *cmdbuf,
				    drm_r300_cmd_header_t header)
{
	int sz;
	int addr;
	RING_LOCALS;

	sz = header.vpu.count;
	addr = (header.vpu.adrhi << 8) | header.vpu.adrlo;

	if (!sz)
		return 0;
	if (sz * 16 > FUNC7(cmdbuf->buffer))
		return -EINVAL;

	/* VAP is very sensitive so we purge cache before we program it
	 * and we also flush its state before & after */
	FUNC1(6);
	FUNC4(FUNC2(R300_RB3D_DSTCACHE_CTLSTAT, 0));
	FUNC4(R300_RB3D_DC_FLUSH);
	FUNC4(FUNC2(RADEON_WAIT_UNTIL, 0));
	FUNC4(RADEON_WAIT_3D_IDLECLEAN);
	FUNC4(FUNC2(R300_VAP_PVS_STATE_FLUSH_REG, 0));
	FUNC4(0);
	FUNC0();
	/* set flush flag */
	dev_priv->track_flush |= RADEON_FLUSH_EMITED;

	FUNC1(3 + sz * 4);
	FUNC6(R300_VAP_PVS_UPLOAD_ADDRESS, addr);
	FUNC4(FUNC3(R300_VAP_PVS_UPLOAD_DATA, sz * 4 - 1));
	FUNC5(cmdbuf->buffer, sz * 4);
	FUNC0();

	FUNC1(2);
	FUNC4(FUNC2(R300_VAP_PVS_STATE_FLUSH_REG, 0));
	FUNC4(0);
	FUNC0();

	return 0;
}