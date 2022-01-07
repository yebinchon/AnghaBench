
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct compstat {int bytes_out; int in_count; int inc_packets; int inc_bytes; int comp_packets; int comp_bytes; int unc_packets; int unc_bytes; } ;
struct bsd_db {int bytes_out; int in_count; int incomp_count; int incomp_bytes; int comp_count; int comp_bytes; int uncomp_count; int uncomp_bytes; } ;



__attribute__((used)) static void bsd_comp_stats (void *state, struct compstat *stats)
  {
    struct bsd_db *db = (struct bsd_db *) state;

    stats->unc_bytes = db->uncomp_bytes;
    stats->unc_packets = db->uncomp_count;
    stats->comp_bytes = db->comp_bytes;
    stats->comp_packets = db->comp_count;
    stats->inc_bytes = db->incomp_bytes;
    stats->inc_packets = db->incomp_count;
    stats->in_count = db->in_count;
    stats->bytes_out = db->bytes_out;
  }
