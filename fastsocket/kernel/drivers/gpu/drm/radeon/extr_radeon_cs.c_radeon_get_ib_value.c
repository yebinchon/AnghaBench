
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_cs_parser {size_t chunk_ib_idx; int parser_error; struct radeon_cs_chunk* chunks; } ;
struct radeon_cs_chunk {int* kpage_idx; int** kpage; } ;


 int PAGE_SIZE ;
 int radeon_cs_update_pages (struct radeon_cs_parser*,int) ;

u32 radeon_get_ib_value(struct radeon_cs_parser *p, int idx)
{
 struct radeon_cs_chunk *ibc = &p->chunks[p->chunk_ib_idx];
 u32 pg_idx, pg_offset;
 u32 idx_value = 0;
 int new_page;

 pg_idx = (idx * 4) / PAGE_SIZE;
 pg_offset = (idx * 4) % PAGE_SIZE;

 if (ibc->kpage_idx[0] == pg_idx)
  return ibc->kpage[0][pg_offset/4];
 if (ibc->kpage_idx[1] == pg_idx)
  return ibc->kpage[1][pg_offset/4];

 new_page = radeon_cs_update_pages(p, pg_idx);
 if (new_page < 0) {
  p->parser_error = new_page;
  return 0;
 }

 idx_value = ibc->kpage[new_page][pg_offset/4];
 return idx_value;
}
