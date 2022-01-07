
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csrow_info {int ue_count; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t csrow_ue_count_show(struct csrow_info *csrow, char *data,
    int private)
{
 return sprintf(data, "%u\n", csrow->ue_count);
}
