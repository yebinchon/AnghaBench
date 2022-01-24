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
struct dm_bufio_client {int blocks_per_page_bits; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  dm_bufio_caches ; 

__attribute__((used)) static inline int FUNC2(struct dm_bufio_client *c)
{
	unsigned ret = c->blocks_per_page_bits - 1;

	FUNC1(ret >= FUNC0(dm_bufio_caches));

	return ret;
}