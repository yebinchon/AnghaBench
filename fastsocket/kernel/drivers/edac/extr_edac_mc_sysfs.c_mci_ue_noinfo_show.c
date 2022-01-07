
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_ctl_info {int ue_noinfo_count; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t mci_ue_noinfo_show(struct mem_ctl_info *mci, char *data)
{
 return sprintf(data, "%d\n", mci->ue_noinfo_count);
}
