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
typedef  int uint8_t ;
typedef  int uint16_t ;
struct nvbios {int* data; int dactestval; } ;
struct nouveau_drm {int dummy; } ;
struct drm_device {int dummy; } ;
struct bit_entry {int length; size_t offset; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOSYS ; 
 int /*<<< orphan*/  FUNC0 (struct nouveau_drm*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_drm*,char*,...) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 struct nouveau_drm* FUNC4 (struct drm_device*) ; 

__attribute__((used)) static int FUNC5(struct drm_device *dev, struct nvbios *bios, struct bit_entry *bitentry)
{
	/*
	 * Parses the load detect values for g80 cards.
	 *
	 * offset + 0 (16 bits): loadval table pointer
	 */

	struct nouveau_drm *drm = FUNC4(dev);
	uint16_t load_table_ptr;
	uint8_t version, headerlen, entrylen, num_entries;

	if (bitentry->length != 3) {
		FUNC1(drm, "Do not understand BIT A table\n");
		return -EINVAL;
	}

	load_table_ptr = FUNC2(bios->data[bitentry->offset]);

	if (load_table_ptr == 0x0) {
		FUNC0(drm, "Pointer to BIT loadval table invalid\n");
		return -EINVAL;
	}

	version = bios->data[load_table_ptr];

	if (version != 0x10) {
		FUNC1(drm, "BIT loadval table version %d.%d not supported\n",
			 version >> 4, version & 0xF);
		return -ENOSYS;
	}

	headerlen = bios->data[load_table_ptr + 1];
	entrylen = bios->data[load_table_ptr + 2];
	num_entries = bios->data[load_table_ptr + 3];

	if (headerlen != 4 || entrylen != 4 || num_entries != 2) {
		FUNC1(drm, "Do not understand BIT loadval table\n");
		return -EINVAL;
	}

	/* First entry is normal dac, 2nd tv-out perhaps? */
	bios->dactestval = FUNC3(bios->data[load_table_ptr + headerlen]) & 0x3ff;

	return 0;
}