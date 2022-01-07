
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csrow_info {int nr_pages; } ;
typedef int ssize_t ;


 int PAGES_TO_MiB (int ) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t csrow_size_show(struct csrow_info *csrow, char *data,
    int private)
{
 return sprintf(data, "%u\n", PAGES_TO_MiB(csrow->nr_pages));
}
