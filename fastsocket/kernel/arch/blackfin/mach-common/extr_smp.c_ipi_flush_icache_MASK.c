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
struct blackfin_flush_data {int /*<<< orphan*/  end; int /*<<< orphan*/  start; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(void *info)
{
	struct blackfin_flush_data *fdata = info;

	/* Invalidate the memory holding the bounds of the flushed region. */
	FUNC0((unsigned long)fdata,
					 (unsigned long)fdata + sizeof(*fdata));

	FUNC1(fdata->start, fdata->end);
}