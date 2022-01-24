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
typedef  int u8 ;
struct orc_scb {int scbidx; } ;
struct orc_host {int index; int** allocation_map; int /*<<< orphan*/  allocation_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC2(struct orc_host *host, struct orc_scb *scb)
{
	unsigned long flags;
	u8 index, i, channel;

	FUNC0(&(host->allocation_lock), flags);
	channel = host->index;	/* Channel */
	index = scb->scbidx;
	i = index / 32;
	index %= 32;
	host->allocation_map[channel][i] |= (1 << index);
	FUNC1(&(host->allocation_lock), flags);
}