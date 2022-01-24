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
typedef  scalar_t__ u32 ;
struct mem_ctl_info {struct i5100_priv* pvt_info; } ;
struct i5100_priv {int /*<<< orphan*/  mc; } ;

/* Variables and functions */
 int /*<<< orphan*/  I5100_FERR_NF_MEM ; 
 int /*<<< orphan*/  I5100_NERR_NF_MEM ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct mem_ctl_info*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct mem_ctl_info *mci)
{
	struct i5100_priv *priv = mci->pvt_info;
	u32 dw;


	FUNC4(priv->mc, I5100_FERR_NF_MEM, &dw);
	if (FUNC0(dw)) {
		u32 dw2;

		FUNC4(priv->mc, I5100_NERR_NF_MEM, &dw2);
		if (dw2)
			FUNC5(priv->mc, I5100_NERR_NF_MEM,
					       dw2);
		FUNC5(priv->mc, I5100_FERR_NF_MEM, dw);

		FUNC3(mci, FUNC1(dw),
			       FUNC0(dw),
			       FUNC2(dw2));
	}
}