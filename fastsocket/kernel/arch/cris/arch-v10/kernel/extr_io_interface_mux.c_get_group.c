
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct if_group {unsigned char const group; } ;


 int ARRAY_SIZE (struct if_group*) ;
 struct if_group* if_groups ;

__attribute__((used)) static struct if_group *get_group(const unsigned char groups)
{
 int i;
 for (i = 0; i < ARRAY_SIZE(if_groups); i++) {
  if (groups & if_groups[i].group) {
   return &if_groups[i];
  }
 }
 return ((void*)0);
}
