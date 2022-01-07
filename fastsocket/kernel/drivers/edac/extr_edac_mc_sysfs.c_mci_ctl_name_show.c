
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_ctl_info {char* ctl_name; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t mci_ctl_name_show(struct mem_ctl_info *mci, char *data)
{
 return sprintf(data, "%s\n", mci->ctl_name);
}
