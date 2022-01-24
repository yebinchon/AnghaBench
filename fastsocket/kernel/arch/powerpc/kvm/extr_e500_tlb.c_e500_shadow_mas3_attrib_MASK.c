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

/* Variables and functions */
 int E500_TLB_SUPER_PERM_MASK ; 
 int E500_TLB_USER_PERM_MASK ; 
 int MAS3_ATTRIB_MASK ; 

__attribute__((used)) static inline u32 FUNC0(u32 mas3, int usermode)
{
	/* Mask off reserved bits. */
	mas3 &= MAS3_ATTRIB_MASK;

	if (!usermode) {
		/* Guest is in supervisor mode,
		 * so we need to translate guest
		 * supervisor permissions into user permissions. */
		mas3 &= ~E500_TLB_USER_PERM_MASK;
		mas3 |= (mas3 & E500_TLB_SUPER_PERM_MASK) << 1;
	}

	return mas3 | E500_TLB_SUPER_PERM_MASK;
}