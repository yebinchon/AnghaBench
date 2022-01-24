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
typedef  int /*<<< orphan*/  u8 ;
struct biosregs {int ah; int /*<<< orphan*/  dh; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct biosregs*) ; 
 int /*<<< orphan*/  FUNC1 (int,struct biosregs*,struct biosregs*) ; 

__attribute__((used)) static u8 FUNC2(void)
{
	struct biosregs ireg, oreg;

	FUNC0(&ireg);
	ireg.ah = 0x02;
	FUNC1(0x1a, &ireg, &oreg);

	return oreg.dh;
}