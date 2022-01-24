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
struct stmp_spi {scalar_t__ regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  BM_SSP_CTRL0_IGNORE_CRC ; 
 int /*<<< orphan*/  BM_SSP_CTRL0_LOCK_CS ; 
 scalar_t__ HW_SSP_CTRL0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static inline void FUNC2(struct stmp_spi *ss)
{
	FUNC0(BM_SSP_CTRL0_LOCK_CS, ss->regs + HW_SSP_CTRL0);
	FUNC1(BM_SSP_CTRL0_IGNORE_CRC, ss->regs + HW_SSP_CTRL0);
}