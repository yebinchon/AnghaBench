
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct childless {unsigned long storeme; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 size_t ERANGE ;
 unsigned long INT_MAX ;
 unsigned long simple_strtoul (char*,char**,int) ;

__attribute__((used)) static ssize_t childless_storeme_write(struct childless *childless,
           const char *page,
           size_t count)
{
 unsigned long tmp;
 char *p = (char *) page;

 tmp = simple_strtoul(p, &p, 10);
 if (!p || (*p && (*p != '\n')))
  return -EINVAL;

 if (tmp > INT_MAX)
  return -ERANGE;

 childless->storeme = tmp;

 return count;
}
