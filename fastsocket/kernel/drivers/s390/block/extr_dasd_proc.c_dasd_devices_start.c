
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
typedef scalar_t__ loff_t ;


 scalar_t__ dasd_max_devindex ;

__attribute__((used)) static void *dasd_devices_start(struct seq_file *m, loff_t *pos)
{
 if (*pos >= dasd_max_devindex)
  return ((void*)0);
 return (void *)((unsigned long) *pos + 1);
}
