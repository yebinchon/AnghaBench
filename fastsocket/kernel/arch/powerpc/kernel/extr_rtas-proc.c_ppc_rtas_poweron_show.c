
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 scalar_t__ power_on_time ;
 int seq_printf (struct seq_file*,char*,...) ;

__attribute__((used)) static int ppc_rtas_poweron_show(struct seq_file *m, void *v)
{
 if (power_on_time == 0)
  seq_printf(m, "Power on time not set\n");
 else
  seq_printf(m, "%lu\n",power_on_time);
 return 0;
}
