
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_ctl_info {int start_time; } ;
typedef int ssize_t ;


 int HZ ;
 int jiffies ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t mci_seconds_show(struct mem_ctl_info *mci, char *data)
{
 return sprintf(data, "%ld\n", (jiffies - mci->start_time) / HZ);
}
