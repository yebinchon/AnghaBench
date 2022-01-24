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
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int IGU_PF_CONF_ATTN_BIT_EN ; 
 int IGU_PF_CONF_INT_LINE_EN ; 
 int IGU_PF_CONF_MSI_MSIX_EN ; 
 int /*<<< orphan*/  IGU_REG_PF_CONFIGURATION ; 
 int /*<<< orphan*/  NETIF_MSG_IFDOWN ; 
 int FUNC2 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void FUNC5(struct bnx2x *bp)
{
	u32 val = FUNC2(bp, IGU_REG_PF_CONFIGURATION);

	val &= ~(IGU_PF_CONF_MSI_MSIX_EN |
		 IGU_PF_CONF_INT_LINE_EN |
		 IGU_PF_CONF_ATTN_BIT_EN);

	FUNC1(NETIF_MSG_IFDOWN, "write %x to IGU\n", val);

	/* flush all outstanding writes */
	FUNC4();

	FUNC3(bp, IGU_REG_PF_CONFIGURATION, val);
	if (FUNC2(bp, IGU_REG_PF_CONFIGURATION) != val)
		FUNC0("BUG! Proper val not read from IGU!\n");
}