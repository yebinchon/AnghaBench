
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bw_stats_struct {int status; int status_printed; int bus_error; int mem_bad_d; int mem_cor_d; int l2_bad_t; int l2_cor_t; int l2_bad_d; int l2_cor_d; } ;


 scalar_t__ G_SCD_BERR_DCODE (int) ;
 scalar_t__ G_SCD_BERR_RID (int) ;
 int G_SCD_BERR_TID (int) ;
 int M_SCD_BERR_MULTERRS ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static int bw_print_buffer(char *page, struct bw_stats_struct *stats)
{
 int len;

 len = sprintf(page, "SiByte Bus Watcher statistics\n");
 len += sprintf(page+len, "-----------------------------\n");
 len += sprintf(page+len, "L2-d-cor %8ld\nL2-d-bad %8ld\n",
         stats->l2_cor_d, stats->l2_bad_d);
 len += sprintf(page+len, "L2-t-cor %8ld\nL2-t-bad %8ld\n",
         stats->l2_cor_t, stats->l2_bad_t);
 len += sprintf(page+len, "MC-d-cor %8ld\nMC-d-bad %8ld\n",
         stats->mem_cor_d, stats->mem_bad_d);
 len += sprintf(page+len, "IO-err   %8ld\n", stats->bus_error);
 len += sprintf(page+len, "\nLast recorded signature:\n");
 len += sprintf(page+len, "Request %02x from %d, answered by %d with Dcode %d\n",
         (unsigned int)(G_SCD_BERR_TID(stats->status) & 0x3f),
         (int)(G_SCD_BERR_TID(stats->status) >> 6),
         (int)G_SCD_BERR_RID(stats->status),
         (int)G_SCD_BERR_DCODE(stats->status));


 if (stats->status & M_SCD_BERR_MULTERRS)
  len += sprintf(page+len, "Multiple errors observed since last check.\n");
 if (stats->status_printed) {
  len += sprintf(page+len, "(no change since last printing)\n");
 } else {
  stats->status_printed = 1;
 }

 return len;
}
