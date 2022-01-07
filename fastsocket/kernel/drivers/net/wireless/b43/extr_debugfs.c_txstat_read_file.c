
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct b43_wldev {TYPE_1__* dfsentry; } ;
struct b43_txstatus_log {int end; struct b43_txstatus* log; } ;
struct b43_txstatus {int acked; int for_ampdu; int intermediate; int pm_indicated; int supp_reason; int rts_count; int frame_count; int phy_stat; int seq; scalar_t__ cookie; } ;
typedef int ssize_t ;
struct TYPE_2__ {struct b43_txstatus_log txstatlog; } ;


 int B43_NR_LOGGED_TXSTATUS ;
 int fappend (char*,...) ;

__attribute__((used)) static ssize_t txstat_read_file(struct b43_wldev *dev,
    char *buf, size_t bufsize)
{
 struct b43_txstatus_log *log = &dev->dfsentry->txstatlog;
 ssize_t count = 0;
 int i, idx;
 struct b43_txstatus *stat;

 if (log->end < 0) {
  fappend("Nothing transmitted, yet\n");
  goto out;
 }
 fappend("b43 TX status reports:\n\n"
  "index | cookie | seq | phy_stat | frame_count | "
  "rts_count | supp_reason | pm_indicated | "
  "intermediate | for_ampdu | acked\n" "---\n");
 i = log->end + 1;
 idx = 0;
 while (1) {
  if (i == B43_NR_LOGGED_TXSTATUS)
   i = 0;
  stat = &(log->log[i]);
  if (stat->cookie) {
   fappend("%03d | "
    "0x%04X | 0x%04X | 0x%02X | "
    "0x%X | 0x%X | "
    "%u | %u | "
    "%u | %u | %u\n",
    idx,
    stat->cookie, stat->seq, stat->phy_stat,
    stat->frame_count, stat->rts_count,
    stat->supp_reason, stat->pm_indicated,
    stat->intermediate, stat->for_ampdu,
    stat->acked);
   idx++;
  }
  if (i == log->end)
   break;
  i++;
 }
out:

 return count;
}
