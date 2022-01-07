
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slabinfo {int name; } ;


 int set_obj (struct slabinfo*,char*,int) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static void slab_shrink(struct slabinfo *s)
{
 if (strcmp(s->name, "*") == 0)
  return;

 set_obj(s, "shrink", 1);
}
