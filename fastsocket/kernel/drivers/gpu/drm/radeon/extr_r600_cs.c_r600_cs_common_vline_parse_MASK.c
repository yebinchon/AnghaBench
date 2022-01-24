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
typedef  int uint32_t ;
struct TYPE_3__ {int* ptr; } ;
struct radeon_cs_parser {int idx; TYPE_2__* rdev; TYPE_1__ ib; } ;
struct radeon_cs_packet {scalar_t__ type; scalar_t__ opcode; int idx; int count; } ;
struct radeon_crtc {int crtc_id; } ;
struct drm_mode_object {int dummy; } ;
struct drm_crtc {int /*<<< orphan*/  enabled; } ;
struct TYPE_4__ {int /*<<< orphan*/  ddev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  DRM_MODE_OBJECT_CRTC ; 
 int EINVAL ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ PACKET3_WAIT_REG_MEM ; 
 int FUNC2 (int) ; 
 int R600_CP_PACKET0_REG_MASK ; 
 scalar_t__ RADEON_PACKET_TYPE3 ; 
 int RADEON_VLINE_STAT ; 
 struct drm_mode_object* FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct drm_crtc* FUNC4 (struct drm_mode_object*) ; 
 int FUNC5 (struct radeon_cs_parser*,struct radeon_cs_packet*,int) ; 
 int FUNC6 (struct radeon_cs_parser*,int) ; 
 struct radeon_crtc* FUNC7 (struct drm_crtc*) ; 

int FUNC8(struct radeon_cs_parser *p,
			       uint32_t *vline_start_end,
			       uint32_t *vline_status)
{
	struct drm_mode_object *obj;
	struct drm_crtc *crtc;
	struct radeon_crtc *radeon_crtc;
	struct radeon_cs_packet p3reloc, wait_reg_mem;
	int crtc_id;
	int r;
	uint32_t header, h_idx, reg, wait_reg_mem_info;
	volatile uint32_t *ib;

	ib = p->ib.ptr;

	/* parse the WAIT_REG_MEM */
	r = FUNC5(p, &wait_reg_mem, p->idx);
	if (r)
		return r;

	/* check its a WAIT_REG_MEM */
	if (wait_reg_mem.type != RADEON_PACKET_TYPE3 ||
	    wait_reg_mem.opcode != PACKET3_WAIT_REG_MEM) {
		FUNC0("vline wait missing WAIT_REG_MEM segment\n");
		return -EINVAL;
	}

	wait_reg_mem_info = FUNC6(p, wait_reg_mem.idx + 1);
	/* bit 4 is reg (0) or mem (1) */
	if (wait_reg_mem_info & 0x10) {
		FUNC0("vline WAIT_REG_MEM waiting on MEM instead of REG\n");
		return -EINVAL;
	}
	/* bit 8 is me (0) or pfp (1) */
	if (wait_reg_mem_info & 0x100) {
		FUNC0("vline WAIT_REG_MEM waiting on PFP instead of ME\n");
		return -EINVAL;
	}
	/* waiting for value to be equal */
	if ((wait_reg_mem_info & 0x7) != 0x3) {
		FUNC0("vline WAIT_REG_MEM function not equal\n");
		return -EINVAL;
	}
	if ((FUNC6(p, wait_reg_mem.idx + 2) << 2) != vline_status[0]) {
		FUNC0("vline WAIT_REG_MEM bad reg\n");
		return -EINVAL;
	}

	if (FUNC6(p, wait_reg_mem.idx + 5) != RADEON_VLINE_STAT) {
		FUNC0("vline WAIT_REG_MEM bad bit mask\n");
		return -EINVAL;
	}

	/* jump over the NOP */
	r = FUNC5(p, &p3reloc, p->idx + wait_reg_mem.count + 2);
	if (r)
		return r;

	h_idx = p->idx - 2;
	p->idx += wait_reg_mem.count + 2;
	p->idx += p3reloc.count + 2;

	header = FUNC6(p, h_idx);
	crtc_id = FUNC6(p, h_idx + 2 + 7 + 1);
	reg = FUNC2(header);

	obj = FUNC3(p->rdev->ddev, crtc_id, DRM_MODE_OBJECT_CRTC);
	if (!obj) {
		FUNC0("cannot find crtc %d\n", crtc_id);
		return -EINVAL;
	}
	crtc = FUNC4(obj);
	radeon_crtc = FUNC7(crtc);
	crtc_id = radeon_crtc->crtc_id;

	if (!crtc->enabled) {
		/* CRTC isn't enabled - we need to nop out the WAIT_REG_MEM */
		ib[h_idx + 2] = FUNC1(0);
		ib[h_idx + 3] = FUNC1(0);
		ib[h_idx + 4] = FUNC1(0);
		ib[h_idx + 5] = FUNC1(0);
		ib[h_idx + 6] = FUNC1(0);
		ib[h_idx + 7] = FUNC1(0);
		ib[h_idx + 8] = FUNC1(0);
	} else if (reg == vline_start_end[0]) {
		header &= ~R600_CP_PACKET0_REG_MASK;
		header |= vline_start_end[crtc_id] >> 2;
		ib[h_idx] = header;
		ib[h_idx + 4] = vline_status[crtc_id] >> 2;
	} else {
		FUNC0("unknown crtc reloc\n");
		return -EINVAL;
	}
	return 0;
}