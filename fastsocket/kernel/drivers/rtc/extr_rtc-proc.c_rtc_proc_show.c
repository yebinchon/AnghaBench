
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct seq_file {struct rtc_device* private; } ;
struct TYPE_3__ {scalar_t__ tm_mday; scalar_t__ tm_mon; scalar_t__ tm_year; scalar_t__ tm_sec; scalar_t__ tm_min; scalar_t__ tm_hour; } ;
struct rtc_wkalrm {scalar_t__ pending; scalar_t__ enabled; TYPE_1__ time; } ;
struct rtc_time {int tm_mday; scalar_t__ tm_mon; scalar_t__ tm_year; int tm_sec; int tm_min; int tm_hour; } ;
struct TYPE_4__ {int parent; } ;
struct rtc_device {TYPE_2__ dev; struct rtc_class_ops* ops; } ;
struct rtc_class_ops {int (* proc ) (int ,struct seq_file*) ;} ;


 int rtc_read_alarm (struct rtc_device*,struct rtc_wkalrm*) ;
 int rtc_read_time (struct rtc_device*,struct rtc_time*) ;
 int seq_printf (struct seq_file*,char*,...) ;
 int stub1 (int ,struct seq_file*) ;

__attribute__((used)) static int rtc_proc_show(struct seq_file *seq, void *offset)
{
 int err;
 struct rtc_device *rtc = seq->private;
 const struct rtc_class_ops *ops = rtc->ops;
 struct rtc_wkalrm alrm;
 struct rtc_time tm;

 err = rtc_read_time(rtc, &tm);
 if (err == 0) {
  seq_printf(seq,
   "rtc_time\t: %02d:%02d:%02d\n"
   "rtc_date\t: %04d-%02d-%02d\n",
   tm.tm_hour, tm.tm_min, tm.tm_sec,
   tm.tm_year + 1900, tm.tm_mon + 1, tm.tm_mday);
 }

 err = rtc_read_alarm(rtc, &alrm);
 if (err == 0) {
  seq_printf(seq, "alrm_time\t: ");
  if ((unsigned int)alrm.time.tm_hour <= 24)
   seq_printf(seq, "%02d:", alrm.time.tm_hour);
  else
   seq_printf(seq, "**:");
  if ((unsigned int)alrm.time.tm_min <= 59)
   seq_printf(seq, "%02d:", alrm.time.tm_min);
  else
   seq_printf(seq, "**:");
  if ((unsigned int)alrm.time.tm_sec <= 59)
   seq_printf(seq, "%02d\n", alrm.time.tm_sec);
  else
   seq_printf(seq, "**\n");

  seq_printf(seq, "alrm_date\t: ");
  if ((unsigned int)alrm.time.tm_year <= 200)
   seq_printf(seq, "%04d-", alrm.time.tm_year + 1900);
  else
   seq_printf(seq, "****-");
  if ((unsigned int)alrm.time.tm_mon <= 11)
   seq_printf(seq, "%02d-", alrm.time.tm_mon + 1);
  else
   seq_printf(seq, "**-");
  if (alrm.time.tm_mday && (unsigned int)alrm.time.tm_mday <= 31)
   seq_printf(seq, "%02d\n", alrm.time.tm_mday);
  else
   seq_printf(seq, "**\n");
  seq_printf(seq, "alarm_IRQ\t: %s\n",
    alrm.enabled ? "yes" : "no");
  seq_printf(seq, "alrm_pending\t: %s\n",
    alrm.pending ? "yes" : "no");
 }

 seq_printf(seq, "24hr\t\t: yes\n");

 if (ops->proc)
  ops->proc(rtc->dev.parent, seq);

 return 0;
}
