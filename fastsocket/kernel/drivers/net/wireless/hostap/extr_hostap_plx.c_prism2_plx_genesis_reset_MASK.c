#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct hostap_plx_priv {int cor_offset; int /*<<< orphan*/ * attr_mem; } ;
struct TYPE_3__ {struct hostap_plx_priv* hw_priv; } ;
typedef  TYPE_1__ local_info_t ;

/* Variables and functions */
 unsigned char COR_SRESET ; 
 unsigned char FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char,int) ; 
 unsigned char FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(local_info_t *local, int hcr)
{
	unsigned char corsave;
	struct hostap_plx_priv *hw_priv = local->hw_priv;

	if (hw_priv->attr_mem == NULL) {
		/* TMD7160 - COR at card's first I/O addr */
		corsave = FUNC0(hw_priv->cor_offset);
		FUNC2(corsave | COR_SRESET, hw_priv->cor_offset);
		FUNC1(10);
		FUNC2(hcr, hw_priv->cor_offset + 2);
		FUNC1(10);
		FUNC2(corsave & ~COR_SRESET, hw_priv->cor_offset);
		FUNC1(10);
	} else {
		/* PLX9052 */
		corsave = FUNC3(hw_priv->attr_mem + hw_priv->cor_offset);
		FUNC4(corsave | COR_SRESET,
		       hw_priv->attr_mem + hw_priv->cor_offset);
		FUNC1(10);
		FUNC4(hcr, hw_priv->attr_mem + hw_priv->cor_offset + 2);
		FUNC1(10);
		FUNC4(corsave & ~COR_SRESET,
		       hw_priv->attr_mem + hw_priv->cor_offset);
		FUNC1(10);
	}
}