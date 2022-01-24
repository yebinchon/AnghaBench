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
typedef  int /*<<< orphan*/  u8 ;
struct nvbios {scalar_t__ type; int* data; int offset; } ;
struct nouveau_drm {struct nvbios vbios; } ;
struct drm_device {int dummy; } ;
struct bit_entry {int version; int* data; } ;

/* Variables and functions */
 scalar_t__ NVBIOS_BMP ; 
 int /*<<< orphan*/ * FUNC0 (struct drm_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*,char,struct bit_entry*) ; 
 struct nouveau_drm* FUNC2 (struct drm_device*) ; 

__attribute__((used)) static u8 *
FUNC3(struct drm_device *dev, u8 *ver)
{
	struct nouveau_drm *drm = FUNC2(dev);
	struct nvbios *bios = &drm->vbios;
	struct bit_entry P;

	if (!FUNC1(dev, 'P', &P) && P.version && P.version <= 2) {
		u8 *perf = FUNC0(dev, P.data[0]);
		if (perf) {
			*ver = perf[0];
			return perf;
		}
	}

	if (bios->type == NVBIOS_BMP) {
		if (bios->data[bios->offset + 6] >= 0x25) {
			u8 *perf = FUNC0(dev, bios->data[bios->offset + 0x94]);
			if (perf) {
				*ver = perf[1];
				return perf;
			}
		}
	}

	return NULL;
}