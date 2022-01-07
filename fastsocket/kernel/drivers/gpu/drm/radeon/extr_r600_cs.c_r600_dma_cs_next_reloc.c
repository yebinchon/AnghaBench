
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_cs_reloc {int dummy; } ;
struct radeon_cs_parser {int chunk_relocs_idx; unsigned int dma_reloc_idx; unsigned int nrelocs; struct radeon_cs_reloc** relocs_ptr; struct radeon_cs_chunk* chunks; } ;
struct radeon_cs_chunk {int dummy; } ;


 int DRM_ERROR (char*,...) ;
 int EINVAL ;

int r600_dma_cs_next_reloc(struct radeon_cs_parser *p,
      struct radeon_cs_reloc **cs_reloc)
{
 struct radeon_cs_chunk *relocs_chunk;
 unsigned idx;

 *cs_reloc = ((void*)0);
 if (p->chunk_relocs_idx == -1) {
  DRM_ERROR("No relocation chunk !\n");
  return -EINVAL;
 }
 relocs_chunk = &p->chunks[p->chunk_relocs_idx];
 idx = p->dma_reloc_idx;
 if (idx >= p->nrelocs) {
  DRM_ERROR("Relocs at %d after relocations chunk end %d !\n",
     idx, p->nrelocs);
  return -EINVAL;
 }
 *cs_reloc = p->relocs_ptr[idx];
 p->dma_reloc_idx++;
 return 0;
}
