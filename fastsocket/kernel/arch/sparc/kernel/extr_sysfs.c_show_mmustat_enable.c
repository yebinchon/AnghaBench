
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysdev_attribute {int dummy; } ;
struct sys_device {int id; } ;
typedef int ssize_t ;


 int read_mmustat_enable ;
 unsigned long run_on_cpu (int ,int ,int ) ;
 int sprintf (char*,char*,unsigned long) ;

__attribute__((used)) static ssize_t show_mmustat_enable(struct sys_device *s,
    struct sysdev_attribute *attr, char *buf)
{
 unsigned long val = run_on_cpu(s->id, read_mmustat_enable, 0);
 return sprintf(buf, "%lx\n", val);
}
