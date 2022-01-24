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
struct il_priv {int hw_ready; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSR_HW_IF_CONFIG_REG ; 
 int /*<<< orphan*/  CSR_HW_IF_CONFIG_REG_BIT_NIC_READY ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int FUNC1 (struct il_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct il_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct il_priv *il)
{
	int ret;

	FUNC2(il, CSR_HW_IF_CONFIG_REG,
		   CSR_HW_IF_CONFIG_REG_BIT_NIC_READY);

	/* See if we got it */
	ret = FUNC1(il, CSR_HW_IF_CONFIG_REG,
			   CSR_HW_IF_CONFIG_REG_BIT_NIC_READY,
			   CSR_HW_IF_CONFIG_REG_BIT_NIC_READY,
			   100);
	if (ret >= 0)
		il->hw_ready = true;

	FUNC0("hardware %s ready\n", (il->hw_ready) ? "" : "not");
}