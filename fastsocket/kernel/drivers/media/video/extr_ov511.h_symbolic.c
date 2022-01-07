
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbolic_list {char* name; int num; } ;


 char* NOT_DEFINED_STR ;

__attribute__((used)) static inline char *
symbolic(struct symbolic_list list[], int num)
{
 int i;

 for (i = 0; list[i].name != ((void*)0); i++)
   if (list[i].num == num)
    return (list[i].name);

 return (NOT_DEFINED_STR);
}
