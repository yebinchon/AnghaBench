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
typedef  int u_short ;
typedef  int /*<<< orphan*/  u_long ;
typedef  int /*<<< orphan*/  u_char ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int HASR_MMI_BUSY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int MMR_MMI_WR ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void
FUNC6(u_long		base,
	u_short		o,
	u_char		d)
{
  int count = 0;

  /* Wait for MMC to go idle */
  while((count++ < 100) && (FUNC3(FUNC0(base)) & HASR_MMI_BUSY))
    FUNC5(10);

  FUNC4((u_char)((o << 1) | MMR_MMI_WR), FUNC2(base));
  FUNC4(d, FUNC1(base));
}