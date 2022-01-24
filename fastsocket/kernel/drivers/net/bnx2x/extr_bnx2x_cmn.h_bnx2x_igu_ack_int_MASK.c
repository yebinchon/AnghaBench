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
typedef  scalar_t__ u16 ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 scalar_t__ BAR_IGU_INTMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__) ; 
 int IGU_REG_SISR_MDPC_WMASK_LSB_UPPER ; 
 int /*<<< orphan*/  NETIF_MSG_INTR ; 
 scalar_t__ FUNC1 (struct bnx2x*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static inline u16 FUNC3(struct bnx2x *bp)
{
	u32 igu_addr = (BAR_IGU_INTMEM + IGU_REG_SISR_MDPC_WMASK_LSB_UPPER*8);
	u32 result = FUNC1(bp, igu_addr);

	FUNC0(NETIF_MSG_INTR, "read 0x%08x from IGU addr 0x%x\n",
	   result, igu_addr);

	FUNC2();
	return result;
}