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
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct nvd0_gpio_priv {int dummy; } ;
struct nouveau_gpio {int /*<<< orphan*/  (* set ) (struct nouveau_gpio*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__) ;} ;
struct nouveau_bios {int dummy; } ;

/* Variables and functions */
 scalar_t__ DCB_GPIO_UNUSED ; 
 int /*<<< orphan*/  FUNC0 (struct nouveau_bios*,int /*<<< orphan*/ ,int,scalar_t__*,scalar_t__*) ; 
 struct nouveau_bios* FUNC1 (struct nouveau_gpio*) ; 
 int /*<<< orphan*/  FUNC2 (struct nvd0_gpio_priv*,int,int,scalar_t__) ; 
 int FUNC3 (struct nouveau_bios*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nouveau_gpio*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__) ; 

void
FUNC5(struct nouveau_gpio *gpio, u8 match)
{
	struct nouveau_bios *bios = FUNC1(gpio);
	struct nvd0_gpio_priv *priv = (void *)gpio;
	u8 ver, len;
	u16 entry;
	int ent = -1;

	while ((entry = FUNC0(bios, 0, ++ent, &ver, &len))) {
		u32 data = FUNC3(bios, entry);
		u8  line =   (data & 0x0000003f);
		u8  defs = !!(data & 0x00000080);
		u8  func =   (data & 0x0000ff00) >> 8;
		u8  unk0 =   (data & 0x00ff0000) >> 16;
		u8  unk1 =   (data & 0x1f000000) >> 24;

		if ( func  == DCB_GPIO_UNUSED ||
		    (match != DCB_GPIO_UNUSED && match != func))
			continue;

		gpio->set(gpio, 0, func, line, defs);

		FUNC2(priv, 0x00d610 + (line * 4), 0xff, unk0);
		if (unk1--)
			FUNC2(priv, 0x00d740 + (unk1 * 4), 0xff, line);
	}
}