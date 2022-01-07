
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slabinfo {char* name; } ;


 char* buffer ;
 int printf (char*,...) ;
 scalar_t__ read_slab_obj (struct slabinfo*,char*) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static void ops(struct slabinfo *s)
{
 if (strcmp(s->name, "*") == 0)
  return;

 if (read_slab_obj(s, "ops")) {
  printf("\n%s: kmem_cache operations\n", s->name);
  printf("--------------------------------------------\n");
  printf(buffer);
 } else
  printf("\n%s has no kmem_cache operations\n", s->name);
}
