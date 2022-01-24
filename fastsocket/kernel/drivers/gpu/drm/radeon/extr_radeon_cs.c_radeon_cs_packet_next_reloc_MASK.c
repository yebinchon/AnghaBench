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
typedef  int u64 ;
struct TYPE_2__ {int gpu_offset; } ;
struct radeon_cs_reloc {TYPE_1__ lobj; } ;
struct radeon_cs_parser {int chunk_relocs_idx; struct radeon_cs_reloc** relocs_ptr; struct radeon_cs_reloc* relocs; int /*<<< orphan*/  idx; struct radeon_cs_chunk* chunks; } ;
struct radeon_cs_packet {scalar_t__ type; scalar_t__ opcode; int idx; scalar_t__ count; } ;
struct radeon_cs_chunk {unsigned int length_dw; int* kdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int EINVAL ; 
 scalar_t__ RADEON_PACKET3_NOP ; 
 scalar_t__ RADEON_PACKET_TYPE3 ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_cs_parser*,struct radeon_cs_packet*) ; 
 int FUNC2 (struct radeon_cs_parser*,struct radeon_cs_packet*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (struct radeon_cs_parser*,int) ; 

int FUNC4(struct radeon_cs_parser *p,
				struct radeon_cs_reloc **cs_reloc,
				int nomm)
{
	struct radeon_cs_chunk *relocs_chunk;
	struct radeon_cs_packet p3reloc;
	unsigned idx;
	int r;

	if (p->chunk_relocs_idx == -1) {
		FUNC0("No relocation chunk !\n");
		return -EINVAL;
	}
	*cs_reloc = NULL;
	relocs_chunk = &p->chunks[p->chunk_relocs_idx];
	r = FUNC2(p, &p3reloc, p->idx);
	if (r)
		return r;
	p->idx += p3reloc.count + 2;
	if (p3reloc.type != RADEON_PACKET_TYPE3 ||
	    p3reloc.opcode != RADEON_PACKET3_NOP) {
		FUNC0("No packet3 for relocation for packet at %d.\n",
			  p3reloc.idx);
		FUNC1(p, &p3reloc);
		return -EINVAL;
	}
	idx = FUNC3(p, p3reloc.idx + 1);
	if (idx >= relocs_chunk->length_dw) {
		FUNC0("Relocs at %d after relocations chunk end %d !\n",
			  idx, relocs_chunk->length_dw);
		FUNC1(p, &p3reloc);
		return -EINVAL;
	}
	/* FIXME: we assume reloc size is 4 dwords */
	if (nomm) {
		*cs_reloc = p->relocs;
		(*cs_reloc)->lobj.gpu_offset =
			(u64)relocs_chunk->kdata[idx + 3] << 32;
		(*cs_reloc)->lobj.gpu_offset |= relocs_chunk->kdata[idx + 0];
	} else
		*cs_reloc = p->relocs_ptr[(idx / 4)];
	return 0;
}