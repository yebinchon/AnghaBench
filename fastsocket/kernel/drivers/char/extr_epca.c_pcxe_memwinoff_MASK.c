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
struct board_info {scalar_t__ port; } ;

/* Variables and functions */
 int FEPMEM ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct board_info *b, unsigned int win)
{
	FUNC1(FUNC0(b->port) & ~FEPMEM, b->port + 1);
	FUNC1(0, b->port + 1);
}