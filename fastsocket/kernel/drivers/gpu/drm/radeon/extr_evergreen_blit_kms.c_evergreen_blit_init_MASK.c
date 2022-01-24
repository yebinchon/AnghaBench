#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_4__ {int /*<<< orphan*/  real_vram_size; } ;
struct TYPE_5__ {int /*<<< orphan*/  set_default_state; int /*<<< orphan*/  draw_auto; int /*<<< orphan*/  set_scissors; int /*<<< orphan*/  set_tex_resource; int /*<<< orphan*/  set_vtx_resource; int /*<<< orphan*/  set_shaders; int /*<<< orphan*/  cp_set_surface_sync; int /*<<< orphan*/  set_render_target; } ;
struct TYPE_6__ {int ring_size_common; int ring_size_per_loop; int max_dim; int state_offset; int state_len; int vs_offset; int ps_offset; int /*<<< orphan*/  shader_obj; int /*<<< orphan*/  shader_gpu_addr; TYPE_2__ primitives; } ;
struct radeon_device {scalar_t__ family; TYPE_1__ mc; TYPE_3__ r600_blit; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 scalar_t__ CHIP_CAYMAN ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  RADEON_GEM_DOMAIN_VRAM ; 
 int cayman_default_size ; 
 int* cayman_default_state ; 
 int /*<<< orphan*/ * cayman_ps ; 
 int cayman_ps_size ; 
 int /*<<< orphan*/ * cayman_vs ; 
 int cayman_vs_size ; 
 int /*<<< orphan*/  cp_set_surface_sync ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  draw_auto ; 
 int evergreen_default_size ; 
 int* evergreen_default_state ; 
 int /*<<< orphan*/ * evergreen_ps ; 
 int evergreen_ps_size ; 
 int /*<<< orphan*/ * evergreen_vs ; 
 int evergreen_vs_size ; 
 int /*<<< orphan*/  FUNC6 (void*,int*,int) ; 
 int FUNC7 (struct radeon_device*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct radeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  set_default_state ; 
 int /*<<< orphan*/  set_render_target ; 
 int /*<<< orphan*/  set_scissors ; 
 int /*<<< orphan*/  set_shaders ; 
 int /*<<< orphan*/  set_tex_resource ; 
 int /*<<< orphan*/  set_vtx_resource ; 
 scalar_t__ FUNC14 (int) ; 

int FUNC15(struct radeon_device *rdev)
{
	u32 obj_size;
	int i, r, dwords;
	void *ptr;
	u32 packet2s[16];
	int num_packet2s = 0;

	rdev->r600_blit.primitives.set_render_target = set_render_target;
	rdev->r600_blit.primitives.cp_set_surface_sync = cp_set_surface_sync;
	rdev->r600_blit.primitives.set_shaders = set_shaders;
	rdev->r600_blit.primitives.set_vtx_resource = set_vtx_resource;
	rdev->r600_blit.primitives.set_tex_resource = set_tex_resource;
	rdev->r600_blit.primitives.set_scissors = set_scissors;
	rdev->r600_blit.primitives.draw_auto = draw_auto;
	rdev->r600_blit.primitives.set_default_state = set_default_state;

	rdev->r600_blit.ring_size_common = 8; /* sync semaphore */
	rdev->r600_blit.ring_size_common += 55; /* shaders + def state */
	rdev->r600_blit.ring_size_common += 16; /* fence emit for VB IB */
	rdev->r600_blit.ring_size_common += 5; /* done copy */
	rdev->r600_blit.ring_size_common += 16; /* fence emit for done copy */

	rdev->r600_blit.ring_size_per_loop = 74;
	if (rdev->family >= CHIP_CAYMAN)
		rdev->r600_blit.ring_size_per_loop += 9; /* additional DWs for surface sync */

	rdev->r600_blit.max_dim = 16384;

	rdev->r600_blit.state_offset = 0;

	if (rdev->family < CHIP_CAYMAN)
		rdev->r600_blit.state_len = evergreen_default_size;
	else
		rdev->r600_blit.state_len = cayman_default_size;

	dwords = rdev->r600_blit.state_len;
	while (dwords & 0xf) {
		packet2s[num_packet2s++] = FUNC4(FUNC3(0));
		dwords++;
	}

	obj_size = dwords * 4;
	obj_size = FUNC0(obj_size, 256);

	rdev->r600_blit.vs_offset = obj_size;
	if (rdev->family < CHIP_CAYMAN)
		obj_size += evergreen_vs_size * 4;
	else
		obj_size += cayman_vs_size * 4;
	obj_size = FUNC0(obj_size, 256);

	rdev->r600_blit.ps_offset = obj_size;
	if (rdev->family < CHIP_CAYMAN)
		obj_size += evergreen_ps_size * 4;
	else
		obj_size += cayman_ps_size * 4;
	obj_size = FUNC0(obj_size, 256);

	/* pin copy shader into vram if not already initialized */
	if (!rdev->r600_blit.shader_obj) {
		r = FUNC7(rdev, obj_size, PAGE_SIZE, true,
				     RADEON_GEM_DOMAIN_VRAM,
				     NULL, &rdev->r600_blit.shader_obj);
		if (r) {
			FUNC2("evergreen failed to allocate shader\n");
			return r;
		}

		r = FUNC11(rdev->r600_blit.shader_obj, false);
		if (FUNC14(r != 0))
			return r;
		r = FUNC10(rdev->r600_blit.shader_obj, RADEON_GEM_DOMAIN_VRAM,
				  &rdev->r600_blit.shader_gpu_addr);
		FUNC12(rdev->r600_blit.shader_obj);
		if (r) {
			FUNC5(rdev->dev, "(%d) pin blit object failed\n", r);
			return r;
		}
	}

	FUNC1("evergreen blit allocated bo %08x vs %08x ps %08x\n",
		  obj_size,
		  rdev->r600_blit.vs_offset, rdev->r600_blit.ps_offset);

	r = FUNC11(rdev->r600_blit.shader_obj, false);
	if (FUNC14(r != 0))
		return r;
	r = FUNC8(rdev->r600_blit.shader_obj, &ptr);
	if (r) {
		FUNC2("failed to map blit object %d\n", r);
		return r;
	}

	if (rdev->family < CHIP_CAYMAN) {
		FUNC6(ptr + rdev->r600_blit.state_offset,
			    evergreen_default_state, rdev->r600_blit.state_len * 4);

		if (num_packet2s)
			FUNC6(ptr + rdev->r600_blit.state_offset + (rdev->r600_blit.state_len * 4),
				    packet2s, num_packet2s * 4);
		for (i = 0; i < evergreen_vs_size; i++)
			*(u32 *)((unsigned long)ptr + rdev->r600_blit.vs_offset + i * 4) = FUNC4(evergreen_vs[i]);
		for (i = 0; i < evergreen_ps_size; i++)
			*(u32 *)((unsigned long)ptr + rdev->r600_blit.ps_offset + i * 4) = FUNC4(evergreen_ps[i]);
	} else {
		FUNC6(ptr + rdev->r600_blit.state_offset,
			    cayman_default_state, rdev->r600_blit.state_len * 4);

		if (num_packet2s)
			FUNC6(ptr + rdev->r600_blit.state_offset + (rdev->r600_blit.state_len * 4),
				    packet2s, num_packet2s * 4);
		for (i = 0; i < cayman_vs_size; i++)
			*(u32 *)((unsigned long)ptr + rdev->r600_blit.vs_offset + i * 4) = FUNC4(cayman_vs[i]);
		for (i = 0; i < cayman_ps_size; i++)
			*(u32 *)((unsigned long)ptr + rdev->r600_blit.ps_offset + i * 4) = FUNC4(cayman_ps[i]);
	}
	FUNC9(rdev->r600_blit.shader_obj);
	FUNC12(rdev->r600_blit.shader_obj);

	FUNC13(rdev, rdev->mc.real_vram_size);
	return 0;
}