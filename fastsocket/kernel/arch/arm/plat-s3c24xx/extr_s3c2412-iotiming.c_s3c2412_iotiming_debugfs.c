
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union s3c_iobank {struct s3c2412_iobank_timing* io_2412; } ;
struct seq_file {int dummy; } ;
struct s3c_cpufreq_config {int dummy; } ;
struct s3c2412_iobank_timing {int wstbrd; int wstwen; int wstoen; int wstwr; int wstrd; int idcy; } ;


 int print_ns (int ) ;
 int seq_printf (struct seq_file*,char*,int ,int ,int ,int ,int ,int ) ;

void s3c2412_iotiming_debugfs(struct seq_file *seq,
         struct s3c_cpufreq_config *cfg,
         union s3c_iobank *iob)
{
 struct s3c2412_iobank_timing *bt = iob->io_2412;

 seq_printf(seq,
     "\tRead: idcy=%d.%d wstrd=%d.%d wstwr=%d,%d"
     "wstoen=%d.%d wstwen=%d.%d wstbrd=%d.%d\n",
     print_ns(bt->idcy),
     print_ns(bt->wstrd),
     print_ns(bt->wstwr),
     print_ns(bt->wstoen),
     print_ns(bt->wstwen),
     print_ns(bt->wstbrd));
}
