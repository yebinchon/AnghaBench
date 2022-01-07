
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* u32 ;
struct seq_file {int dummy; } ;
struct device {int dummy; } ;


 int OIER ;
 int OIER_E1 ;
 int RTSR ;
 int RTSR_HZE ;
 scalar_t__ RTTR ;
 char* rtc_freq ;
 int seq_printf (struct seq_file*,char*,char*) ;

__attribute__((used)) static int sa1100_rtc_proc(struct device *dev, struct seq_file *seq)
{
 seq_printf(seq, "trim/divider\t: 0x%08x\n", (u32) RTTR);
 seq_printf(seq, "update_IRQ\t: %s\n",
   (RTSR & RTSR_HZE) ? "yes" : "no");
 seq_printf(seq, "periodic_IRQ\t: %s\n",
   (OIER & OIER_E1) ? "yes" : "no");
 seq_printf(seq, "periodic_freq\t: %ld\n", rtc_freq);

 return 0;
}
