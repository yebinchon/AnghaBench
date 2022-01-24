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
struct riscom_board {scalar_t__ base; } ;

/* Variables and functions */
 int RC_NIOPORT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * rc_ioport ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 

__attribute__((used)) static void FUNC2(struct riscom_board * const bp)
{
	int i;

	for (i = 0; i < RC_NIOPORT; i++)
		FUNC1(FUNC0(rc_ioport[i]) + bp->base, 1);
}