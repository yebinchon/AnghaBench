
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct radeon_device {int dummy; } ;
struct TYPE_3__ {int length_dw; } ;
struct radeon_cs_parser {int chunk_ib_idx; int cs_flags; TYPE_1__ ib; scalar_t__ parser_error; int ring; struct radeon_cs_chunk* chunks; } ;
struct radeon_cs_chunk {int length_dw; } ;


 int DRM_ERROR (char*) ;
 int RADEON_CS_USE_VM ;
 int radeon_cs_finish_pages (struct radeon_cs_parser*) ;
 int radeon_cs_parse (struct radeon_device*,int ,struct radeon_cs_parser*) ;
 int radeon_cs_sync_rings (struct radeon_cs_parser*) ;
 int radeon_ib_get (struct radeon_device*,int ,TYPE_1__*,int *,int) ;
 int radeon_ib_schedule (struct radeon_device*,TYPE_1__*,int *) ;

__attribute__((used)) static int radeon_cs_ib_chunk(struct radeon_device *rdev,
         struct radeon_cs_parser *parser)
{
 struct radeon_cs_chunk *ib_chunk;
 int r;

 if (parser->chunk_ib_idx == -1)
  return 0;

 if (parser->cs_flags & RADEON_CS_USE_VM)
  return 0;

 ib_chunk = &parser->chunks[parser->chunk_ib_idx];




 r = radeon_ib_get(rdev, parser->ring, &parser->ib,
      ((void*)0), ib_chunk->length_dw * 4);
 if (r) {
  DRM_ERROR("Failed to get ib !\n");
  return r;
 }
 parser->ib.length_dw = ib_chunk->length_dw;
 r = radeon_cs_parse(rdev, parser->ring, parser);
 if (r || parser->parser_error) {
  DRM_ERROR("Invalid command stream !\n");
  return r;
 }
 r = radeon_cs_finish_pages(parser);
 if (r) {
  DRM_ERROR("Invalid command stream !\n");
  return r;
 }
 radeon_cs_sync_rings(parser);
 r = radeon_ib_schedule(rdev, &parser->ib, ((void*)0));
 if (r) {
  DRM_ERROR("Failed to schedule IB !\n");
 }
 return r;
}
