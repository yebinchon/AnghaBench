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
struct slabinfo {int alloc_slab; unsigned long alloc_fastpath; unsigned long alloc_slowpath; unsigned long free_fastpath; unsigned long free_slowpath; int free_slab; int deactivate_to_head; int deactivate_to_tail; int free_add_partial; int alloc_from_partial; int free_remove_partial; int deactivate_remote_frees; int free_frozen; long cpuslab_flush; long alloc_refill; unsigned long deactivate_full; unsigned long deactivate_empty; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void FUNC1(struct slabinfo *s)
{
	unsigned long total_alloc;
	unsigned long total_free;
	unsigned long total;

	if (!s->alloc_slab)
		return;

	total_alloc = s->alloc_fastpath + s->alloc_slowpath;
	total_free = s->free_fastpath + s->free_slowpath;

	if (!total_alloc)
		return;

	FUNC0("\n");
	FUNC0("Slab Perf Counter       Alloc     Free %%Al %%Fr\n");
	FUNC0("--------------------------------------------------\n");
	FUNC0("Fastpath             %8lu %8lu %3lu %3lu\n",
		s->alloc_fastpath, s->free_fastpath,
		s->alloc_fastpath * 100 / total_alloc,
		s->free_fastpath * 100 / total_free);
	FUNC0("Slowpath             %8lu %8lu %3lu %3lu\n",
		total_alloc - s->alloc_fastpath, s->free_slowpath,
		(total_alloc - s->alloc_fastpath) * 100 / total_alloc,
		s->free_slowpath * 100 / total_free);
	FUNC0("Page Alloc           %8lu %8lu %3lu %3lu\n",
		s->alloc_slab, s->free_slab,
		s->alloc_slab * 100 / total_alloc,
		s->free_slab * 100 / total_free);
	FUNC0("Add partial          %8lu %8lu %3lu %3lu\n",
		s->deactivate_to_head + s->deactivate_to_tail,
		s->free_add_partial,
		(s->deactivate_to_head + s->deactivate_to_tail) * 100 / total_alloc,
		s->free_add_partial * 100 / total_free);
	FUNC0("Remove partial       %8lu %8lu %3lu %3lu\n",
		s->alloc_from_partial, s->free_remove_partial,
		s->alloc_from_partial * 100 / total_alloc,
		s->free_remove_partial * 100 / total_free);

	FUNC0("RemoteObj/SlabFrozen %8lu %8lu %3lu %3lu\n",
		s->deactivate_remote_frees, s->free_frozen,
		s->deactivate_remote_frees * 100 / total_alloc,
		s->free_frozen * 100 / total_free);

	FUNC0("Total                %8lu %8lu\n\n", total_alloc, total_free);

	if (s->cpuslab_flush)
		FUNC0("Flushes %8lu\n", s->cpuslab_flush);

	if (s->alloc_refill)
		FUNC0("Refill %8lu\n", s->alloc_refill);

	total = s->deactivate_full + s->deactivate_empty +
			s->deactivate_to_head + s->deactivate_to_tail;

	if (total)
		FUNC0("Deactivate Full=%lu(%lu%%) Empty=%lu(%lu%%) "
			"ToHead=%lu(%lu%%) ToTail=%lu(%lu%%)\n",
			s->deactivate_full, (s->deactivate_full * 100) / total,
			s->deactivate_empty, (s->deactivate_empty * 100) / total,
			s->deactivate_to_head, (s->deactivate_to_head * 100) / total,
			s->deactivate_to_tail, (s->deactivate_to_tail * 100) / total);
}