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
struct dm_bufio_client {int dummy; } ;
struct dm_buffer {int /*<<< orphan*/  state; struct dm_bufio_client* c; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  B_DIRTY ; 
 int /*<<< orphan*/  B_READING ; 
 int /*<<< orphan*/  LIST_DIRTY ; 
 int /*<<< orphan*/  FUNC1 (struct dm_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dm_bufio_client*) ; 
 int /*<<< orphan*/  FUNC3 (struct dm_bufio_client*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC6(struct dm_buffer *b)
{
	struct dm_bufio_client *c = b->c;

	FUNC2(c);

	FUNC0(FUNC5(B_READING, &b->state));

	if (!FUNC4(B_DIRTY, &b->state))
		FUNC1(b, LIST_DIRTY);

	FUNC3(c);
}