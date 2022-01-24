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
struct dm_bufio_client {scalar_t__ block_size; scalar_t__ aux_size; } ;
struct dm_buffer {int /*<<< orphan*/  data_mode; int /*<<< orphan*/  data; struct dm_bufio_client* c; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  FUNC1 (struct dm_bufio_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct dm_buffer*) ; 
 struct dm_buffer* FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct dm_buffer *FUNC4(struct dm_bufio_client *c, gfp_t gfp_mask)
{
	struct dm_buffer *b = FUNC3(sizeof(struct dm_buffer) + c->aux_size,
				      gfp_mask);

	if (!b)
		return NULL;

	b->c = c;

	b->data = FUNC1(c, gfp_mask, &b->data_mode);
	if (!b->data) {
		FUNC2(b);
		return NULL;
	}

	FUNC0(b->data_mode, (long)c->block_size);

	return b;
}