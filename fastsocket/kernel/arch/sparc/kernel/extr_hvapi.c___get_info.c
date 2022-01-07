
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct api_info {unsigned long group; } ;


 int ARRAY_SIZE (struct api_info*) ;
 struct api_info* api_table ;

__attribute__((used)) static struct api_info *__get_info(unsigned long group)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(api_table); i++) {
  if (api_table[i].group == group)
   return &api_table[i];
 }
 return ((void*)0);
}
