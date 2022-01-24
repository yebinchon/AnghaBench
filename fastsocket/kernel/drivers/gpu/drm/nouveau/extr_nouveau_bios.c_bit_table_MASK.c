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
typedef  scalar_t__ u8 ;
struct nvbios {scalar_t__ type; scalar_t__* data; int offset; } ;
struct nouveau_drm {struct nvbios vbios; } ;
struct drm_device {int dummy; } ;
struct bit_entry {int /*<<< orphan*/  data; void* offset; void* length; scalar_t__ version; scalar_t__ id; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOENT ; 
 scalar_t__ NVBIOS_BIT ; 
 void* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*,scalar_t__) ; 
 struct nouveau_drm* FUNC2 (struct drm_device*) ; 

int
FUNC3(struct drm_device *dev, u8 id, struct bit_entry *bit)
{
	struct nouveau_drm *drm = FUNC2(dev);
	struct nvbios *bios = &drm->vbios;
	u8 entries, *entry;

	if (bios->type != NVBIOS_BIT)
		return -ENODEV;

	entries = bios->data[bios->offset + 10];
	entry   = &bios->data[bios->offset + 12];
	while (entries--) {
		if (entry[0] == id) {
			bit->id = entry[0];
			bit->version = entry[1];
			bit->length = FUNC0(entry[2]);
			bit->offset = FUNC0(entry[4]);
			bit->data = FUNC1(dev, entry[4]);
			return 0;
		}

		entry += bios->data[bios->offset + 9];
	}

	return -ENOENT;
}