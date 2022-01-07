
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raid_type {int name; } ;


 struct raid_type* ARRAY_END (int ) ;
 int raid_types ;
 int strcmp (int ,char*) ;

__attribute__((used)) static struct raid_type *get_raid_type(char *name)
{
 struct raid_type *r = ARRAY_END(raid_types);

 while (r-- > raid_types) {
  if (!strcmp(r->name, name))
   return r;
 }

 return ((void*)0);
}
