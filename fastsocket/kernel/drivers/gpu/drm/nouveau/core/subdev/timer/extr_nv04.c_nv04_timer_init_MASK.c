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
struct nv04_timer_priv {int /*<<< orphan*/  base; } ;
struct nouveau_object {int dummy; } ;
struct nouveau_device {int chipset; int crystal; } ;

/* Variables and functions */
 int NV04_PTIMER_DENOMINATOR ; 
 int NV04_PTIMER_INTR_0 ; 
 int NV04_PTIMER_INTR_EN_0 ; 
 int NV04_PTIMER_NUMERATOR ; 
 int /*<<< orphan*/  PLL_CORE ; 
 int FUNC0 (struct nouveau_device*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct nv04_timer_priv*,char*,int) ; 
 struct nouveau_device* FUNC3 (struct nouveau_object*) ; 
 int /*<<< orphan*/  FUNC4 (struct nv04_timer_priv*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct nv04_timer_priv*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct nv04_timer_priv*,int,int) ; 

__attribute__((used)) static int
FUNC7(struct nouveau_object *object)
{
	struct nouveau_device *device = FUNC3(object);
	struct nv04_timer_priv *priv = (void *)object;
	u32 m = 1, f, n, d;
	int ret;

	ret = FUNC1(&priv->base);
	if (ret)
		return ret;

	/* aim for 31.25MHz, which gives us nanosecond timestamps */
	d = 1000000 / 32;

	/* determine base clock for timer source */
#if 0 /*XXX*/
	if (device->chipset < 0x40) {
		n = nouveau_hw_get_clock(device, PLL_CORE);
	} else
#endif
	if (device->chipset <= 0x40) {
		/*XXX: figure this out */
		f = -1;
		n = 0;
	} else {
		f = device->crystal;
		n = f;
		while (n < (d * 2)) {
			n += (n / m);
			m++;
		}

		FUNC6(priv, 0x009220, m - 1);
	}

	if (!n) {
		FUNC5(priv, "unknown input clock freq\n");
		if (!FUNC4(priv, NV04_PTIMER_NUMERATOR) ||
		    !FUNC4(priv, NV04_PTIMER_DENOMINATOR)) {
			FUNC6(priv, NV04_PTIMER_NUMERATOR, 1);
			FUNC6(priv, NV04_PTIMER_DENOMINATOR, 1);
		}
		return 0;
	}

	/* reduce ratio to acceptable values */
	while (((n % 5) == 0) && ((d % 5) == 0)) {
		n /= 5;
		d /= 5;
	}

	while (((n % 2) == 0) && ((d % 2) == 0)) {
		n /= 2;
		d /= 2;
	}

	while (n > 0xffff || d > 0xffff) {
		n >>= 1;
		d >>= 1;
	}

	FUNC2(priv, "input frequency : %dHz\n", f);
	FUNC2(priv, "input multiplier: %d\n", m);
	FUNC2(priv, "numerator       : 0x%08x\n", n);
	FUNC2(priv, "denominator     : 0x%08x\n", d);
	FUNC2(priv, "timer frequency : %dHz\n", (f * m) * d / n);

	FUNC6(priv, NV04_PTIMER_NUMERATOR, n);
	FUNC6(priv, NV04_PTIMER_DENOMINATOR, d);
	FUNC6(priv, NV04_PTIMER_INTR_0, 0xffffffff);
	FUNC6(priv, NV04_PTIMER_INTR_EN_0, 0x00000000);
	return 0;
}