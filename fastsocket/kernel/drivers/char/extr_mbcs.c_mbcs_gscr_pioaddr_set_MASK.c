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
struct mbcs_soft {int /*<<< orphan*/  gscr_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  MBCS_GSCR_START ; 
 int /*<<< orphan*/  FUNC0 (struct mbcs_soft*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct mbcs_soft *soft)
{
	soft->gscr_addr = FUNC0(soft, MBCS_GSCR_START);
}