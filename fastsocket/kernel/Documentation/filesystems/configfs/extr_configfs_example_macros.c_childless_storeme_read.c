
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct childless {int storeme; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t childless_storeme_read(struct childless *childless,
          char *page)
{
 return sprintf(page, "%d\n", childless->storeme);
}
