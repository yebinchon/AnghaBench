
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raid_type {int name; } ;


 int ARRAY_SIZE (struct raid_type*) ;
 struct raid_type* raid_types ;
 int strcmp (int ,char*) ;

__attribute__((used)) static struct raid_type *get_raid_type(char *name)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(raid_types); i++)
  if (!strcmp(raid_types[i].name, name))
   return &raid_types[i];

 return ((void*)0);
}
