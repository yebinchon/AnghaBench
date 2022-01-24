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
typedef  int u8 ;
struct lgs8gxx_state {TYPE_1__* config; } ;
struct TYPE_2__ {scalar_t__ prod; } ;

/* Variables and functions */
 int GI_420 ; 
 int GI_595 ; 
 int GI_945 ; 
 int GI_MASK ; 
 scalar_t__ LGS8GXX_PROD_LGS8G75 ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct lgs8gxx_state*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct lgs8gxx_state*,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct lgs8gxx_state*) ; 
 int FUNC4 (struct lgs8gxx_state*,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct lgs8gxx_state*,int,int) ; 

__attribute__((used)) static int FUNC6(struct lgs8gxx_state *priv, u8 gi, u8 cpn,
	u8 *locked)
{
	int err = 0;
	u8 ad_fini = 0;
	u8 t1, t2;

	if (gi == GI_945)
		FUNC0("try GI 945\n");
	else if (gi == GI_595)
		FUNC0("try GI 595\n");
	else if (gi == GI_420)
		FUNC0("try GI 420\n");
	if (priv->config->prod == LGS8GXX_PROD_LGS8G75) {
		FUNC2(priv, 0x0C, &t1);
		FUNC2(priv, 0x18, &t2);
		t1 &= ~(GI_MASK);
		t1 |= gi;
		t2 &= 0xFE;
		t2 |= cpn ? 0x01 : 0x00;
		FUNC5(priv, 0x0C, t1);
		FUNC5(priv, 0x18, t2);
	} else {
		FUNC5(priv, 0x04, gi);
	}
	FUNC3(priv);
	err = FUNC4(priv, locked);
	if (err || !(*locked))
		return err;
	err = FUNC1(priv, &ad_fini);
	if (err != 0)
		return err;
	if (ad_fini) {
		FUNC0("auto detect finished\n");
	} else
		*locked = 0;

	return 0;
}