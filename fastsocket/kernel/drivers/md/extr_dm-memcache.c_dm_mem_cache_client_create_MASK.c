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
struct dm_mem_cache_object {int dummy; } ;
struct dm_mem_cache_client {unsigned int objects; unsigned int chunks; unsigned int pages_per_chunk; unsigned int free_pages; unsigned int total_pages; int /*<<< orphan*/  objs_pool; int /*<<< orphan*/  lock; int /*<<< orphan*/  free_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct dm_mem_cache_client* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct dm_mem_cache_client*) ; 
 struct dm_mem_cache_client* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

struct dm_mem_cache_client *
FUNC8(unsigned objects, unsigned chunks,
			   unsigned pages_per_chunk)
{
	unsigned total_pages = objects * chunks * pages_per_chunk;
	struct dm_mem_cache_client *client;

	FUNC0(!total_pages);
	client = FUNC4(sizeof(*client), GFP_KERNEL);
	if (!client)
		return FUNC1(-ENOMEM);

	client->objs_pool = FUNC5(objects,
				chunks * sizeof(struct dm_mem_cache_object));
	if (!client->objs_pool)
		goto err;

	client->free_list = FUNC2(total_pages);
	if (!client->free_list)
		goto err1;

	FUNC7(&client->lock);
	client->objects = objects;
	client->chunks = chunks;
	client->pages_per_chunk = pages_per_chunk;
	client->free_pages = client->total_pages = total_pages;
	return client;

err1:
	FUNC6(client->objs_pool);
err:
	FUNC3(client);
	return FUNC1(-ENOMEM);
}