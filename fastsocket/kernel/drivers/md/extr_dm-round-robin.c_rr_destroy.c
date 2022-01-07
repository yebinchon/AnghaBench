
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct selector {int invalid_paths; int valid_paths; } ;
struct path_selector {int * context; } ;


 int free_paths (int *) ;
 int kfree (struct selector*) ;

__attribute__((used)) static void rr_destroy(struct path_selector *ps)
{
 struct selector *s = (struct selector *) ps->context;

 free_paths(&s->valid_paths);
 free_paths(&s->invalid_paths);
 kfree(s);
 ps->context = ((void*)0);
}
