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
typedef  scalar_t__ u16 ;
struct nvbios_init {scalar_t__ offset; struct nouveau_bios* bios; } ;
struct nouveau_gpio {int /*<<< orphan*/  (* reset ) (struct nouveau_gpio*,scalar_t__) ;} ;
struct nouveau_bios {int dummy; } ;
struct dcb_gpio_func {scalar_t__ func; } ;

/* Variables and functions */
 scalar_t__ DCB_GPIO_UNUSED ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ FUNC1 (struct nouveau_bios*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,scalar_t__*,struct dcb_gpio_func*) ; 
 scalar_t__ FUNC2 (struct nvbios_init*) ; 
 struct nouveau_gpio* FUNC3 (struct nouveau_bios*) ; 
 scalar_t__ FUNC4 (struct nouveau_bios*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct nouveau_gpio*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

__attribute__((used)) static void
FUNC7(struct nvbios_init *init)
{
	struct nouveau_bios *bios = init->bios;
	struct nouveau_gpio *gpio = FUNC3(bios);
	struct dcb_gpio_func func;
	u8 count = FUNC4(bios, init->offset + 1);
	u8 idx = 0, ver, len;
	u16 data, i;

	FUNC6("GPIO_NE\t");
	init->offset += 2;

	for (i = init->offset; i < init->offset + count; i++)
		FUNC0("0x%02x ", FUNC4(bios, i));
	FUNC0("\n");

	while ((data = FUNC1(bios, 0, idx++, &ver, &len, &func))) {
		if (func.func != DCB_GPIO_UNUSED) {
			for (i = init->offset; i < init->offset + count; i++) {
				if (func.func == FUNC4(bios, i))
					break;
			}

			FUNC6("\tFUNC[0x%02x]", func.func);
			if (i == (init->offset + count)) {
				FUNC0(" *");
				if (FUNC2(init) && gpio && gpio->reset)
					gpio->reset(gpio, func.func);
			}
			FUNC0("\n");
		}
	}

	init->offset += count;
}