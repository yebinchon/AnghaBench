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

/* Variables and functions */
 int /*<<< orphan*/  STADRH ; 
 int /*<<< orphan*/  STADRL ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC1(unsigned long addr)
{
	FUNC0((addr >> 21) & 0x007f, STADRH);
	FUNC0((addr >> 5) & 0x0ffff, STADRL);
}