
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csrow_info {size_t mtype; } ;
typedef int ssize_t ;


 char** mem_types ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t csrow_mem_type_show(struct csrow_info *csrow, char *data,
    int private)
{
 return sprintf(data, "%s\n", mem_types[csrow->mtype]);
}
