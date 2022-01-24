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
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 scalar_t__ MAC_CTRL_REG ; 
 int /*<<< orphan*/  MAC_ENABLE_TX ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static inline void FUNC2(unsigned long ioaddr)
{
	u32 value = FUNC0(ioaddr + MAC_CTRL_REG);
	value |= MAC_ENABLE_TX;
	/* Set the TE (transmit enable bit into the MAC CTRL register).  */
	FUNC1(value, ioaddr + MAC_CTRL_REG);
}