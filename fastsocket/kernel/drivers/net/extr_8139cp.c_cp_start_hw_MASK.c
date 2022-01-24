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
struct cp_private {int /*<<< orphan*/  cpcmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  Cmd ; 
 int /*<<< orphan*/  CpCmd ; 
 int RxOn ; 
 int TxOn ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC2 (struct cp_private *cp)
{
	FUNC0(CpCmd, cp->cpcmd);
	FUNC1(Cmd, RxOn | TxOn);
}