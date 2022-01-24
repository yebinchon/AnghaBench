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
struct e100_serial {int* ioport; int /*<<< orphan*/  rx_ctrl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t REG_REC_CTRL ; 
 int /*<<< orphan*/  R_SERIAL0_REC_CTRL ; 
 int /*<<< orphan*/  rec_enable ; 

__attribute__((used)) static inline void
FUNC1(struct e100_serial *info)
{
#ifndef CONFIG_SVINTO_SIM
	/* enable the receiver */
	info->ioport[REG_REC_CTRL] =
		(info->rx_ctrl |= FUNC0(R_SERIAL0_REC_CTRL, rec_enable));
#endif
}