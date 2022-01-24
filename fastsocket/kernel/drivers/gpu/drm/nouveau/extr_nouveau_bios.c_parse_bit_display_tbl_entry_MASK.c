#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  fptablepointer; } ;
struct nvbios {int /*<<< orphan*/ * data; TYPE_1__ fp; } ;
struct nouveau_drm {int dummy; } ;
struct drm_device {int dummy; } ;
struct bit_entry {int length; int offset; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct nouveau_drm*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct nouveau_drm* FUNC2 (struct drm_device*) ; 

__attribute__((used)) static int FUNC3(struct drm_device *dev, struct nvbios *bios, struct bit_entry *bitentry)
{
	/*
	 * Parses the flat panel table segment that the bit entry points to.
	 * Starting at bitentry->offset:
	 *
	 * offset + 0  (16 bits): ??? table pointer - seems to have 18 byte
	 * records beginning with a freq.
	 * offset + 2  (16 bits): mode table pointer
	 */
	struct nouveau_drm *drm = FUNC2(dev);

	if (bitentry->length != 4) {
		FUNC0(drm, "Do not understand BIT display table\n");
		return -EINVAL;
	}

	bios->fp.fptablepointer = FUNC1(bios->data[bitentry->offset + 2]);

	return 0;
}