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
typedef  int u16 ;
struct zr36050 {int scalefact; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZR050_SF_HI ; 
 int /*<<< orphan*/  ZR050_SF_LO ; 
 int FUNC0 (struct zr36050*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u16
FUNC1 (struct zr36050 *ptr)
{
	ptr->scalefact = (FUNC0(ptr, ZR050_SF_HI) << 8) |
			 (FUNC0(ptr, ZR050_SF_LO) & 0xFF);

	/* leave 0 selected for an eventually GO from master */
	FUNC0(ptr, 0);
	return ptr->scalefact;
}