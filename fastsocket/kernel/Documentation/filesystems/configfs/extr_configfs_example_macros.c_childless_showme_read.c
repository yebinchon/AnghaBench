
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct childless {int showme; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t childless_showme_read(struct childless *childless,
         char *page)
{
 ssize_t pos;

 pos = sprintf(page, "%d\n", childless->showme);
 childless->showme++;

 return pos;
}
