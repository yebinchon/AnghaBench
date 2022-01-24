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
struct dm_bufio_client {scalar_t__ block_size; } ;
struct dm_buffer {int /*<<< orphan*/  data_mode; int /*<<< orphan*/  data; struct dm_bufio_client* c; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  FUNC1 (struct dm_bufio_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dm_buffer*) ; 

__attribute__((used)) static void FUNC3(struct dm_buffer *b)
{
	struct dm_bufio_client *c = b->c;

	FUNC0(b->data_mode, -(long)c->block_size);

	FUNC1(c, b->data, b->data_mode);
	FUNC2(b);
}