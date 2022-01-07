
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct platform_device {int id; } ;
struct device {int dummy; } ;


 int seq_printf (struct seq_file*,char*,...) ;
 struct platform_device* to_platform_device (struct device*) ;

__attribute__((used)) static int test_rtc_proc(struct device *dev, struct seq_file *seq)
{
 struct platform_device *plat_dev = to_platform_device(dev);

 seq_printf(seq, "test\t\t: yes\n");
 seq_printf(seq, "id\t\t: %d\n", plat_dev->id);

 return 0;
}
