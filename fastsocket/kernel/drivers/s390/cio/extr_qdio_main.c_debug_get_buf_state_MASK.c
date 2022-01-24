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
struct qdio_q {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct qdio_q*,unsigned int,unsigned char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct qdio_q*) ; 

int FUNC2(struct qdio_q *q, unsigned int bufnr,
			unsigned char *state)
{
	FUNC1(q);
	return FUNC0(q, bufnr, state, 1, 0, 0);
}