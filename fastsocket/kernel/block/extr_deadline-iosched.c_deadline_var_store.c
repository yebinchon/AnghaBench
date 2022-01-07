
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ssize_t ;


 int simple_strtol (char*,char**,int) ;

__attribute__((used)) static ssize_t
deadline_var_store(int *var, const char *page, size_t count)
{
 char *p = (char *) page;

 *var = simple_strtol(p, &p, 10);
 return count;
}
