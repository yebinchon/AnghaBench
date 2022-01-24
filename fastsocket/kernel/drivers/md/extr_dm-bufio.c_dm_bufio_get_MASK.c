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
struct dm_buffer {int dummy; } ;
typedef  int /*<<< orphan*/  sector_t ;

/* Variables and functions */
 int /*<<< orphan*/  NF_GET ; 
 void* FUNC0 (struct dm_bufio_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dm_buffer**) ; 

void *FUNC1(struct dm_bufio_client *c, sector_t block,
		   struct dm_buffer **bp)
{
	return FUNC0(c, block, NF_GET, bp);
}