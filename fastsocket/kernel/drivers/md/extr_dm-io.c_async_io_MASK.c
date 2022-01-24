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
struct io {void* context; int /*<<< orphan*/  (* callback ) (int,void*) ;struct dm_io_client* client; int /*<<< orphan*/ * sleeper; int /*<<< orphan*/  count; scalar_t__ error_bits; } ;
struct dpages {int dummy; } ;
struct dm_io_region {int dummy; } ;
struct dm_io_client {int /*<<< orphan*/  pool; } ;
typedef  int /*<<< orphan*/  (* io_notify_fn ) (int,void*) ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 int RW_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int WRITE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int,unsigned int,struct dm_io_region*,struct dpages*,struct io*,int /*<<< orphan*/ ) ; 
 struct io* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct dm_io_client *client, unsigned int num_regions,
		    struct dm_io_region *where, int rw, struct dpages *dp,
		    io_notify_fn fn, void *context)
{
	struct io *io;

	if (num_regions > 1 && (rw & RW_MASK) != WRITE) {
		FUNC0(1);
		fn(1, context);
		return -EIO;
	}

	io = FUNC3(client->pool, GFP_NOIO);
	io->error_bits = 0;
	FUNC1(&io->count, 1); /* see dispatch_io() */
	io->sleeper = NULL;
	io->client = client;
	io->callback = fn;
	io->context = context;

	FUNC2(rw, num_regions, where, dp, io, 0);
	return 0;
}