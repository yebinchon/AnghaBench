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
struct pstore {scalar_t__ valid; } ;
struct dm_exception_store {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct pstore* FUNC1 (struct dm_exception_store*) ; 
 scalar_t__ FUNC2 (struct pstore*) ; 

__attribute__((used)) static void FUNC3(struct dm_exception_store *store)
{
	struct pstore *ps = FUNC1(store);

	ps->valid = 0;
	if (FUNC2(ps))
		FUNC0("write header failed");
}