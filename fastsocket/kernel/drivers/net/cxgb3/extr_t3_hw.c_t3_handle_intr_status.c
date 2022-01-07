
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intr_info {int mask; size_t stat_idx; scalar_t__ msg; scalar_t__ fatal; } ;
struct adapter {int dummy; } ;


 int CH_ALERT (struct adapter*,char*,scalar_t__,unsigned int) ;
 int CH_WARN (struct adapter*,char*,scalar_t__,unsigned int) ;
 unsigned int t3_read_reg (struct adapter*,unsigned int) ;
 int t3_write_reg (struct adapter*,unsigned int,unsigned int) ;

__attribute__((used)) static int t3_handle_intr_status(struct adapter *adapter, unsigned int reg,
     unsigned int mask,
     const struct intr_info *acts,
     unsigned long *stats)
{
 int fatal = 0;
 unsigned int status = t3_read_reg(adapter, reg) & mask;

 for (; acts->mask; ++acts) {
  if (!(status & acts->mask))
   continue;
  if (acts->fatal) {
   fatal++;
   CH_ALERT(adapter, "%s (0x%x)\n",
     acts->msg, status & acts->mask);
   status &= ~acts->mask;
  } else if (acts->msg)
   CH_WARN(adapter, "%s (0x%x)\n",
    acts->msg, status & acts->mask);
  if (acts->stat_idx >= 0)
   stats[acts->stat_idx]++;
 }
 if (status)
  t3_write_reg(adapter, reg, status);
 return fatal;
}
