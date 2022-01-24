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
typedef  size_t u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct nvbios {int ram_restrict_tbl_ptr; size_t* data; } ;
struct nouveau_drm {struct nvbios vbios; } ;
struct nouveau_device {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 struct nouveau_device* FUNC0 (struct drm_device*) ; 
 struct nouveau_drm* FUNC1 (struct drm_device*) ; 
 size_t* FUNC2 (struct drm_device*,int /*<<< orphan*/ ,size_t*,size_t*,size_t*,size_t*) ; 
 int FUNC3 (struct nouveau_device*,int) ; 

u8 *
FUNC4(struct drm_device *dev, u32 freq, u8 *ver, u8 *len)
{
	struct nouveau_device *device = FUNC0(dev);
	struct nouveau_drm *drm = FUNC1(dev);
	struct nvbios *bios = &drm->vbios;
	u8 strap, hdr, cnt;
	u8 *rammap;

	strap = (FUNC3(device, 0x101000) & 0x0000003c) >> 2;
	if (bios->ram_restrict_tbl_ptr)
		strap = bios->data[bios->ram_restrict_tbl_ptr + strap];

	rammap = FUNC2(dev, freq, ver, &hdr, &cnt, len);
	if (rammap && strap < cnt)
		return rammap + hdr + (strap * *len);

	return NULL;
}