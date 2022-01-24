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
struct radeon_cs_reloc {int dummy; } ;
struct radeon_cs_parser {int chunk_relocs_idx; unsigned int dma_reloc_idx; unsigned int nrelocs; struct radeon_cs_reloc** relocs_ptr; struct radeon_cs_chunk* chunks; } ;
struct radeon_cs_chunk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int EINVAL ; 

int FUNC1(struct radeon_cs_parser *p,
			   struct radeon_cs_reloc **cs_reloc)
{
	struct radeon_cs_chunk *relocs_chunk;
	unsigned idx;

	*cs_reloc = NULL;
	if (p->chunk_relocs_idx == -1) {
		FUNC0("No relocation chunk !\n");
		return -EINVAL;
	}
	relocs_chunk = &p->chunks[p->chunk_relocs_idx];
	idx = p->dma_reloc_idx;
	if (idx >= p->nrelocs) {
		FUNC0("Relocs at %d after relocations chunk end %d !\n",
			  idx, p->nrelocs);
		return -EINVAL;
	}
	*cs_reloc = p->relocs_ptr[idx];
	p->dma_reloc_idx++;
	return 0;
}