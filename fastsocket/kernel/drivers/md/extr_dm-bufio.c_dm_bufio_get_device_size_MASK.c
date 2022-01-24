#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct dm_bufio_client {int sectors_per_block_bits; TYPE_1__* bdev; } ;
typedef  int sector_t ;
struct TYPE_2__ {int /*<<< orphan*/  bd_inode; } ;

/* Variables and functions */
 int SECTOR_SHIFT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 

sector_t FUNC1(struct dm_bufio_client *c)
{
	return FUNC0(c->bdev->bd_inode) >>
			   (SECTOR_SHIFT + c->sectors_per_block_bits);
}