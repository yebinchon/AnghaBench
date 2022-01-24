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
typedef  int u32 ;
typedef  int u16 ;
struct nouveau_device {scalar_t__ card_type; } ;
struct nouveau_bios {int size; scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ NV_50 ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ) ; 
 struct nouveau_device* FUNC1 (struct nouveau_bios*) ; 
 int FUNC2 (struct nouveau_bios*,int,int,int) ; 
 int FUNC3 (struct nouveau_bios*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nouveau_bios*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct nouveau_bios*,int,int) ; 

__attribute__((used)) static void
FUNC6(struct nouveau_bios *bios)
{
	struct nouveau_device *device = FUNC1(bios);
	u32 pcireg, access;
	u16 pcir;
	int i;

	/* enable access to rom */
	if (device->card_type >= NV_50)
		pcireg = 0x088050;
	else
		pcireg = 0x001850;
	access = FUNC2(bios, pcireg, 0x00000001, 0x00000000);

	/* bail if no rom signature, with a workaround for a PROM reading
	 * issue on some chipsets.  the first read after a period of
	 * inactivity returns the wrong result, so retry the first header
	 * byte a few times before giving up as a workaround
	 */
	i = 16;
	do {
		if (FUNC3(bios, 0x300000) == 0x55)
			break;
	} while (i--);

	if (!i || FUNC3(bios, 0x300001) != 0xaa)
		goto out;

	/* additional check (see note below) - read PCI record header */
	pcir = FUNC3(bios, 0x300018) |
	       FUNC3(bios, 0x300019) << 8;
	if (FUNC3(bios, 0x300000 + pcir) != 'P' ||
	    FUNC3(bios, 0x300001 + pcir) != 'C' ||
	    FUNC3(bios, 0x300002 + pcir) != 'I' ||
	    FUNC3(bios, 0x300003 + pcir) != 'R')
		goto out;

	/* read entire bios image to system memory */
	bios->size = FUNC3(bios, 0x300002) * 512;
	if (!bios->size)
		goto out;

	bios->data = FUNC0(bios->size, GFP_KERNEL);
	if (bios->data) {
		for (i = 0; i < bios->size; i++)
			FUNC4(bios, i, FUNC3(bios, 0x300000 + i));
	}

out:
	/* disable access to rom */
	FUNC5(bios, pcireg, access);
}