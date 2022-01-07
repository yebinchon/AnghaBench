
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int sprintf (char*,char*,unsigned long) ;

__attribute__((used)) static ssize_t
queue_var_show(unsigned long var, char *page)
{
 return sprintf(page, "%lu\n", var);
}
