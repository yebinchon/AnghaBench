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
struct pstore {scalar_t__ callbacks; scalar_t__ io_client; int /*<<< orphan*/  metadata_wq; } ;
struct dm_exception_store {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct pstore*) ; 
 struct pstore* FUNC3 (struct dm_exception_store*) ; 
 int /*<<< orphan*/  FUNC4 (struct pstore*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct dm_exception_store *store)
{
	struct pstore *ps = FUNC3(store);

	FUNC0(ps->metadata_wq);

	/* Created in read_header */
	if (ps->io_client)
		FUNC1(ps->io_client);
	FUNC2(ps);

	/* Allocated in persistent_read_metadata */
	if (ps->callbacks)
		FUNC5(ps->callbacks);

	FUNC4(ps);
}