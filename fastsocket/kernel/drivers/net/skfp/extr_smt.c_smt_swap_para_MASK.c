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
struct smt_header {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 

void FUNC1(struct smt_header *sm, int len, int direction)
/* int direction;	0 encode 1 decode */
{
	FUNC0(sm) ;
	FUNC0(len) ;
	FUNC0(direction) ;
}