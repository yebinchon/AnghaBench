
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct b43legacy_wldev {TYPE_1__* dfsentry; } ;
struct b43legacy_txstatus_log {int end; int lock; struct b43legacy_txstatus* log; } ;
struct b43legacy_txstatus {int acked; int for_ampdu; int intermediate; int pm_indicated; int supp_reason; int rts_count; int frame_count; int phy_stat; int seq; scalar_t__ cookie; } ;
typedef int ssize_t ;
struct TYPE_2__ {struct b43legacy_txstatus_log txstatlog; } ;


 int B43legacy_NR_LOGGED_TXSTATUS ;
 int fappend (char*,...) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static ssize_t txstat_read_file(struct b43legacy_wldev *dev, char *buf, size_t bufsize)
{
 struct b43legacy_txstatus_log *log = &dev->dfsentry->txstatlog;
 ssize_t count = 0;
 unsigned long flags;
 int i, idx;
 struct b43legacy_txstatus *stat;

 spin_lock_irqsave(&log->lock, flags);
 if (log->end < 0) {
  fappend("Nothing transmitted, yet\n");
  goto out_unlock;
 }
 fappend("b43legacy TX status reports:\n\n"
  "index | cookie | seq | phy_stat | frame_count | "
  "rts_count | supp_reason | pm_indicated | "
  "intermediate | for_ampdu | acked\n" "---\n");
 i = log->end + 1;
 idx = 0;
 while (1) {
  if (i == B43legacy_NR_LOGGED_TXSTATUS)
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
out_unlock:
 spin_unlock_irqrestore(&log->lock, flags);

 return count;
}
