
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shadow_spine {int count; int * nodes; int info; } ;


 int unlock_block (int ,int ) ;

int exit_shadow_spine(struct shadow_spine *s)
{
 int r = 0, i;

 for (i = 0; i < s->count; i++) {
  int r2 = unlock_block(s->info, s->nodes[i]);
  if (r2 < 0)
   r = r2;
 }

 return r;
}
