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
typedef  int /*<<< orphan*/  u32 ;
struct nouveau_pm_tbl_entry {int RAM_FT1; size_t tCL; size_t tWR; } ;
struct nouveau_pm_memtiming {int drive_strength; int odt; int* mr; int /*<<< orphan*/  id; } ;
struct nouveau_drm {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int ERANGE ; 
 int /*<<< orphan*/  FUNC0 (struct nouveau_drm*,char*,int /*<<< orphan*/ ,int,int,int) ; 
 size_t NV_MEM_CL_GDDR3_MAX ; 
 size_t NV_MEM_WR_GDDR3_MAX ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_drm*,char*,int /*<<< orphan*/ ,size_t) ; 
 struct nouveau_drm* FUNC2 (struct drm_device*) ; 
 int* nv_mem_cl_lut_gddr3 ; 
 int* nv_mem_wr_lut_gddr3 ; 

__attribute__((used)) static int
FUNC3(struct drm_device *dev, u32 freq,
		     struct nouveau_pm_tbl_entry *e, u8 len,
		     struct nouveau_pm_memtiming *boot,
		     struct nouveau_pm_memtiming *t)
{
	struct nouveau_drm *drm = FUNC2(dev);

	if (len < 15) {
		t->drive_strength = boot->drive_strength;
		t->odt = boot->odt;
	} else {
		t->drive_strength = (e->RAM_FT1 & 0x30) >> 4;
		t->odt = e->RAM_FT1 & 0x07;
	}

	if (e->tCL >= NV_MEM_CL_GDDR3_MAX) {
		FUNC1(drm, "(%u) Invalid tCL: %u", t->id, e->tCL);
		return -ERANGE;
	}

	if (e->tWR >= NV_MEM_WR_GDDR3_MAX) {
		FUNC1(drm, "(%u) Invalid tWR: %u", t->id, e->tWR);
		return -ERANGE;
	}

	if (t->odt > 3) {
		FUNC1(drm, "(%u) Invalid odt value, assuming autocal: %x",
			t->id, t->odt);
		t->odt = 0;
	}

	t->mr[0] = (boot->mr[0] & 0xe0b) |
		   /* CAS */
		   ((nv_mem_cl_lut_gddr3[e->tCL] & 0x7) << 4) |
		   ((nv_mem_cl_lut_gddr3[e->tCL] & 0x8) >> 2);
	t->mr[1] = (boot->mr[1] & 0x100f40) | t->drive_strength |
		   (t->odt << 2) |
		   (nv_mem_wr_lut_gddr3[e->tWR] & 0xf) << 4;
	t->mr[2] = boot->mr[2];

	FUNC0(drm, "(%u) MR: %08x %08x %08x", t->id,
		      t->mr[0], t->mr[1], t->mr[2]);
	return 0;
}