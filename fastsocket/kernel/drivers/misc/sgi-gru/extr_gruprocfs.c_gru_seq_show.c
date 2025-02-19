
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct gru_state {int gs_active_contexts; int gs_blade_id; int gs_gid; int gs_dsr_map; int gs_cbr_map; } ;


 struct gru_state* GID_TO_GRU (long) ;
 long GRU_CBR_AU_SIZE ;
 long GRU_DSR_AU_BYTES ;
 int GRU_NUM_CBE ;
 long GRU_NUM_CCH ;
 int GRU_NUM_DSR_BYTES ;
 long hweight64 (int ) ;
 int seq_printf (struct seq_file*,char*,char*,char*,...) ;

__attribute__((used)) static int gru_seq_show(struct seq_file *file, void *data)
{
 long gid = *(long *)data, ctxfree, cbrfree, dsrfree;
 struct gru_state *gru = GID_TO_GRU(gid);

 if (gid == 0) {
  seq_printf(file, "#%5s%5s%7s%6s%6s%8s%6s%6s\n", "gid", "nid",
      "ctx", "cbr", "dsr", "ctx", "cbr", "dsr");
  seq_printf(file, "#%5s%5s%7s%6s%6s%8s%6s%6s\n", "", "", "busy",
      "busy", "busy", "free", "free", "free");
 }
 if (gru) {
  ctxfree = GRU_NUM_CCH - gru->gs_active_contexts;
  cbrfree = hweight64(gru->gs_cbr_map) * GRU_CBR_AU_SIZE;
  dsrfree = hweight64(gru->gs_dsr_map) * GRU_DSR_AU_BYTES;
  seq_printf(file, " %5d%5d%7ld%6ld%6ld%8ld%6ld%6ld\n",
      gru->gs_gid, gru->gs_blade_id, GRU_NUM_CCH - ctxfree,
      GRU_NUM_CBE - cbrfree, GRU_NUM_DSR_BYTES - dsrfree,
      ctxfree, cbrfree, dsrfree);
 }

 return 0;
}
