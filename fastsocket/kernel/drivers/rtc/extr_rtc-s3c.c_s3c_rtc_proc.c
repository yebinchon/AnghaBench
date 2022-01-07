
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct device {int dummy; } ;


 scalar_t__ S3C2410_TICNT ;
 unsigned int S3C2410_TICNT_ENABLE ;
 unsigned int readb (scalar_t__) ;
 scalar_t__ s3c_rtc_base ;
 int seq_printf (struct seq_file*,char*,char*) ;

__attribute__((used)) static int s3c_rtc_proc(struct device *dev, struct seq_file *seq)
{
 unsigned int ticnt = readb(s3c_rtc_base + S3C2410_TICNT);

 seq_printf(seq, "periodic_IRQ\t: %s\n",
       (ticnt & S3C2410_TICNT_ENABLE) ? "yes" : "no" );
 return 0;
}
