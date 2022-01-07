
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ssize_t ;


 unsigned long simple_strtoul (char*,char**,int) ;

__attribute__((used)) static ssize_t
queue_var_store(unsigned long *var, const char *page, size_t count)
{
 char *p = (char *) page;

 *var = simple_strtoul(p, &p, 10);
 return count;
}
