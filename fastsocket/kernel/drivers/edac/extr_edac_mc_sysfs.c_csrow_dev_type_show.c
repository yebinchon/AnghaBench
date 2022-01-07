
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csrow_info {size_t dtype; } ;
typedef int ssize_t ;


 char** dev_types ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t csrow_dev_type_show(struct csrow_info *csrow, char *data,
    int private)
{
 return sprintf(data, "%s\n", dev_types[csrow->dtype]);
}
