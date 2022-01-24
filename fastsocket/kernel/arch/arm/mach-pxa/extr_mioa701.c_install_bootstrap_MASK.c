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
 int BOOTSTRAP_WORDS ; 
 int /*<<< orphan*/  RESUME_VECTOR_ADDR ; 
 int /*<<< orphan*/  mioa701_bootstrap ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(void)
{
	int i;
	u32 *rom_bootstrap  = FUNC0(RESUME_VECTOR_ADDR);
	u32 *src = &mioa701_bootstrap;

	for (i = 0; i < BOOTSTRAP_WORDS; i++)
		rom_bootstrap[i] = src[i];
}