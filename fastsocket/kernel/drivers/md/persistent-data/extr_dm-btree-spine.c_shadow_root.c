
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shadow_spine {int root; } ;



int shadow_root(struct shadow_spine *s)
{
 return s->root;
}
