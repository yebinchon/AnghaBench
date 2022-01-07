
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int seq_printf (struct seq_file*,char*) ;

__attribute__((used)) static void linkstation_show_cpuinfo(struct seq_file *m)
{
 seq_printf(m, "vendor\t\t: Buffalo Technology\n");
 seq_printf(m, "machine\t\t: Linkstation I/Kurobox(HG)\n");
}
