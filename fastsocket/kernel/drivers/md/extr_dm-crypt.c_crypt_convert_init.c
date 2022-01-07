
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypt_config {scalar_t__ iv_offset; } ;
struct convert_context {int restart; scalar_t__ sector; int idx_out; int idx_in; scalar_t__ offset_out; scalar_t__ offset_in; struct bio* bio_out; struct bio* bio_in; } ;
struct bio {int bi_idx; } ;
typedef scalar_t__ sector_t ;


 int init_completion (int *) ;

__attribute__((used)) static void crypt_convert_init(struct crypt_config *cc,
          struct convert_context *ctx,
          struct bio *bio_out, struct bio *bio_in,
          sector_t sector)
{
 ctx->bio_in = bio_in;
 ctx->bio_out = bio_out;
 ctx->offset_in = 0;
 ctx->offset_out = 0;
 ctx->idx_in = bio_in ? bio_in->bi_idx : 0;
 ctx->idx_out = bio_out ? bio_out->bi_idx : 0;
 ctx->sector = sector + cc->iv_offset;
 init_completion(&ctx->restart);
}
