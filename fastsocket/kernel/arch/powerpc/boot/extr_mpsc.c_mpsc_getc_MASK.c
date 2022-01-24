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
typedef  int u32 ;

/* Variables and functions */
 scalar_t__ MPSC_CHR_10 ; 
 scalar_t__ MPSC_INTR_CAUSE ; 
 int MPSC_INTR_CAUSE_RCC ; 
 unsigned char FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int*) ; 
 scalar_t__ mpsc_base ; 
 scalar_t__ mpscintr_base ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (int*,int) ; 

__attribute__((used)) static unsigned char FUNC4(void)
{
	u32 cause = 0;
	unsigned char c;

	while (!(cause & MPSC_INTR_CAUSE_RCC))
		cause = FUNC1((u32 *)(mpscintr_base + MPSC_INTR_CAUSE));

	c = FUNC0((u8 *)(mpsc_base + MPSC_CHR_10 + 2));
	FUNC2((u8 *)(mpsc_base + MPSC_CHR_10 + 2), c);
	FUNC3((u32 *)(mpscintr_base + MPSC_INTR_CAUSE),
			cause & ~MPSC_INTR_CAUSE_RCC);

	return c;
}