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
 int /*<<< orphan*/  IOP13XX_ATUE_OCCAR ; 
 int /*<<< orphan*/  IOP13XX_ATUE_OCCDR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static u32 FUNC3(unsigned long addr)
{
	u32 val;

	FUNC1(addr, IOP13XX_ATUE_OCCAR);
	val = FUNC0(IOP13XX_ATUE_OCCDR);

	FUNC2();

	return val;
}