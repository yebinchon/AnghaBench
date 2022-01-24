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
struct dm_bio_prison {int /*<<< orphan*/  cell_pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dm_bio_prison*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(struct dm_bio_prison *prison)
{
	FUNC1(prison->cell_pool);
	FUNC0(prison);
}