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
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct nv50_gpio_priv {int dummy; } ;
struct nouveau_gpio {int /*<<< orphan*/  (* set ) (struct nouveau_gpio*,int /*<<< orphan*/ ,int,int,int) ;} ;
struct nouveau_bios {int dummy; } ;

/* Variables and functions */
 int DCB_GPIO_UNUSED ; 
 int /*<<< orphan*/  FUNC0 (struct nouveau_bios*,int /*<<< orphan*/ ,int,int*,int*) ; 
 struct nouveau_bios* FUNC1 (struct nouveau_gpio*) ; 
 int /*<<< orphan*/  FUNC2 (struct nv50_gpio_priv*,int,int,int) ; 
 int FUNC3 (struct nouveau_bios*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nouveau_gpio*,int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static void
FUNC5(struct nouveau_gpio *gpio, u8 match)
{
	struct nouveau_bios *bios = FUNC1(gpio);
	struct nv50_gpio_priv *priv = (void *)gpio;
	u8 ver, len;
	u16 entry;
	int ent = -1;

	while ((entry = FUNC0(bios, 0, ++ent, &ver, &len))) {
		static const u32 regs[] = { 0xe100, 0xe28c };
		u32 data = FUNC3(bios, entry);
		u8  line =   (data & 0x0000001f);
		u8  func =   (data & 0x0000ff00) >> 8;
		u8  defs = !!(data & 0x01000000);
		u8  unk0 = !!(data & 0x02000000);
		u8  unk1 = !!(data & 0x04000000);
		u32 val = (unk1 << 16) | unk0;
		u32 reg = regs[line >> 4]; line &= 0x0f;

		if ( func  == DCB_GPIO_UNUSED ||
		    (match != DCB_GPIO_UNUSED && match != func))
			continue;

		gpio->set(gpio, 0, func, line, defs);

		FUNC2(priv, reg, 0x00010001 << line, val << line);
	}
}