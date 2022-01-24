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
struct bcm_enet_priv {int dummy; } ;

/* Variables and functions */
 int ENETDMA_CHANCFG_EN_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct bcm_enet_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bcm_enet_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct bcm_enet_priv *priv, int chan)
{
	int limit;

	FUNC2(priv, 0, FUNC0(chan));

	limit = 1000;
	do {
		u32 val;

		val = FUNC1(priv, FUNC0(chan));
		if (!(val & ENETDMA_CHANCFG_EN_MASK))
			break;
		FUNC3(1);
	} while (limit--);
}